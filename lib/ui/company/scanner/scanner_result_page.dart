import 'package:auto_route/auto_route.dart';
import 'package:companyeidc/generated/l10n.dart';
import 'package:companyeidc/resources/resources.dart';
import 'package:companyeidc/ui/company/scanner/check_company_action.dart';
import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ScannerResultPage extends ConsumerStatefulWidget {
  const ScannerResultPage({
    Key? key,
    required this.code,
  }) : super(key: key);

  final String code;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ScannerResultPageState();
}

class _ScannerResultPageState extends ConsumerState<ScannerResultPage> {
  @override
  void initState() {
    super.initState();
    ref.read(companyCheckerProvider.notifier).submit(id: widget.code);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(companyCheckerProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          state.maybeWhen(
            failure: (failure, _) => Column(
              children: [
                _ScanResult(
                  message: S.of(context).noCompanyFoundMessage,
                  color: Colors.red.shade400,
                ),
                const _DoneButton(),
              ],
            ),
            success: (data) => Column(
              children: [
                _ScanResult(
                  color: Colors.green.shade400,
                  message: S.of(context).companyFinderSuccessMessage,
                ),
                const Gap(24),
                Text(data.name ?? ' '),
                const Gap(16),
                Text(
                  data.companyNo ?? '',
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        fontSize: 15,
                      ),
                ),
                const _DoneButton(),
              ],
            ),
            orElse: () => const LoadingWidget(),
          ),
        ],
      ),
    );
  }
}

class _ScanResult extends StatelessWidget {
  const _ScanResult({
    Key? key,
    required this.message,
    required this.color,
  }) : super(key: key);
  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Svgs.qr,
            color: color.withOpacity(.9),
            width: 140,
            height: 140,
          ),
          const Gap(24),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: color.withOpacity(.07),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Text(
                message,
                style: TextStyle(color: color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DoneButton extends StatelessWidget {
  const _DoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
      child: OutlinedButton(
        onPressed: context.router.popUntilRoot,
        style: OutlinedButton.styleFrom(
            minimumSize: const Size(200, 44),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            )),
        child: Text(S.of(context).done),
      ),
    );
  }
}
