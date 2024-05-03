import 'package:companyeidc/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    this.color,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);
  final Color? color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 56,
              width: 56,
              child: LoadingIndicator(
                indicatorType: Indicator.ballPulseSync,
                colors: [
                  color ?? Theme.of(context).primaryColor,
                ],
                strokeWidth: 3,
              ),
            ),
            const Gap(16),
            Text(S.of(context).pleaseWait)
          ],
        ),
      ),
    );
  }
}
