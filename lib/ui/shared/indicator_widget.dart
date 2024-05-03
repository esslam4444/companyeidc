import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    Key? key,
    required this.svgAsset,
    required this.message,
    this.action,
    this.graphicSize,
    this.graphicOpacity = .3,
    this.textColor,
  }) : super(key: key);

  final String svgAsset;
  final String message;
  final Widget? action;
  final double? graphicSize;
  final double graphicOpacity;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: graphicOpacity,
            child: SvgPicture.asset(
              svgAsset,
              width: graphicSize ?? 150,
            ),
          ),
          const Gap(48),
          Text(
            message,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: textColor,
                ),
          ),
          if (action != null) action!
        ],
      ),
    );
  }
}
