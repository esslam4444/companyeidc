import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LabelValueRow extends StatelessWidget {
  const LabelValueRow({Key? key, required this.label, required this.value}) : super(key: key);
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final captionStyle = Theme.of(context).textTheme.caption?.copyWith(height: 1.4, fontSize: 15);
    final titleStyle = Theme.of(context).textTheme.subtitle1?.copyWith(height: 1);
    return Row(children: [
      Text(
        label,
        style: captionStyle,
      ),
      const Gap(16),
      Expanded(child: Align(alignment: AlignmentDirectional.centerEnd, child: Text(value ?? '', style: titleStyle))),
    ]);
  }
}
