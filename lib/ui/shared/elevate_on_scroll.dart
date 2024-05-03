import 'package:flutter/material.dart';

class ElevateOnScroll extends StatefulWidget {
  const ElevateOnScroll({
    Key? key,
    required this.builder,
    this.elevation = 0,
    this.scrollElevation = 2,
  }) : super(key: key);

  final Widget Function(BuildContext context, double elevation) builder;
  final double elevation;
  final double scrollElevation;

  static _ElevateOnScrollState of(BuildContext context) {
    return context.findAncestorStateOfType<_ElevateOnScrollState>()!;
  }

  @override
  _ElevateOnScrollState createState() => _ElevateOnScrollState();
}

class _ElevateOnScrollState extends State<ElevateOnScroll> {
  bool _elevated = false;
  late double _elevation = widget.elevation;

  bool get elevated => _elevated;

  void setElevated(bool elevated) {
    setState(() {
      _elevation = elevated ? widget.scrollElevation : widget.elevation;
      _elevated = elevated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (event) {
        setElevated(
          event.metrics.axis == Axis.vertical && event.metrics.pixels > 0,
        );
        return false;
      },
      child: widget.builder(context, _elevation),
    );
  }
}
