import 'package:companyeidc/ui/shared/loading_widget.dart';
import 'package:flutter/material.dart';

class OverlaidLoader extends StatelessWidget {
  const OverlaidLoader({
    required this.child,
    required this.loading,
    this.loadingWidget,
    this.stackFit = StackFit.expand,
    Key? key,
  }) : super(key: key);

  final bool loading;
  final Widget child;
  final Widget? loadingWidget;
  final StackFit stackFit;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: stackFit, children: [
      child,
      if (loading)
        Positioned.fill(
          child: AbsorbPointer(
            child: loadingWidget ??
                const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                  child: LoadingWidget(),
                ),
          ),
        ),
    ]);
  }
}
