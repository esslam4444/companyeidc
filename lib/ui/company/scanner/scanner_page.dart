import 'dart:io' show Platform;

import 'package:auto_route/auto_route.dart';
import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key, required this.cameraPermissionGranted}) : super(key: key);
  final bool cameraPermissionGranted;

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? _result;
  QRViewController? _controller;
  late bool _canShowQrView = widget.cameraPermissionGranted;
  bool _scannedInvalidCode = false;

  @override
  void initState() {
    super.initState();
    if (!widget.cameraPermissionGranted) {
      getCameraPermission();
    }
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      _controller?.pauseCamera();
    } else if (Platform.isIOS) {
      _controller?.resumeCamera();
    }
    _result = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 72,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: FloatingActionButton(
            backgroundColor: Colors.white12,
            mini: true,
            onPressed: context.popRoute,
            elevation: 0,
            child: const IconTheme(
              data: IconThemeData(color: Colors.white),
              child: BackButtonIcon(),
            ),
          ),
        ),
      ),
      body: Consumer(builder: (context, ref, _) {
        final screenHeight = MediaQuery.of(context).size.height;
        return Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              height: screenHeight * .7,
              child: _canShowQrView
                  ? QRView(
                      key: _qrKey,
                      overlay: QrScannerOverlayShape(
                        borderRadius: 16,
                        borderWidth: 3,
                        borderColor: Theme.of(context).primaryColor,
                      ),
                      onQRViewCreated: (controller) => _onQRViewCreated(context, controller),
                    )
                  : Container(
                      color: Colors.black,
                    ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: screenHeight * .32,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Svgs.qr),
                      const Gap(24),
                      if (!_scannedInvalidCode)
                        Text(S.of(context).aimCameraOnQrToScan)
                      else
                        Text(
                          S.of(context).invalidQrCode,
                          style: TextStyle(
                            color: Colors.red.shade400,
                          ),
                        )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      }),
    );
  }

  void _onQRViewCreated(BuildContext context, QRViewController controller) {
    _controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      final code = scanData.code ?? '';

      setState(() {
        _scannedInvalidCode = !checkCodeValidity(code);
      });

      if (_scannedInvalidCode) return;

      if (_result == null) {
        controller.pauseCamera();
        _result = scanData;
        await context.pushRoute(ScannerResultRoute(code: code));
        _result = null;
        controller.resumeCamera();
      }
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void getCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      if (result.isGranted) {
        setState(() {
          _canShowQrView = true;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(S.of(context).cameraPermissionMessage),
          ),
        );
        context.popRoute();
      }
    }
  }

  bool checkCodeValidity(String code) {
    int T = 0;
    int S = 0;

    if (code.length != 11) {
      return false;
    }
    for (int i = 0; i < code.length; i++) {
      int value;
      switch (code[i]) {
        case 'X':
          value = 10;
          break;
        case 'Y':
          value = 11;
          break;
        case 'Z':
          value = 12;
          break;
        default:
          value = int.tryParse(code[i]) ?? 0;
      }
      T += value;
      S += (value * (i + 1));
    }
    return ((T % 13) == 0) && ((S % 13) == 0);
  }
}
