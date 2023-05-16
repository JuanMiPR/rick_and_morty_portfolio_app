import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../design/img.dart';

class CustomLoading extends StatefulWidget {
  const CustomLoading({
    Key? key,
    this.vertical = false,
  }) : super(key: key);
  final bool vertical;

  @override
  State<CustomLoading> createState() => _CustomLoadingState();
}

class _CustomLoadingState extends State<CustomLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Image.asset(
        widget.vertical ? Img.loadingImgVertical : Img.loadingImgHorizontal,
        height: 75,
        width: 75,
      ),
    );
  }
}
