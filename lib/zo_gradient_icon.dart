library zo_gradient_icon;

import 'package:flutter/material.dart';

class ZOGradientIcon extends StatefulWidget {
  ZOGradientIcon(
    this.icon,
    this.size,
    this.gradientColors,
  );

  final IconData icon;
  final double size;
  final List<Color> gradientColors;

  @override
  _ZOGradientIconState createState() => _ZOGradientIconState();
}

class _ZOGradientIconState extends State<ZOGradientIcon> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: widget.gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 0.33, 0.66, 1.0],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: Icon(
          widget.icon,
          color: Colors.white,
          size: widget.size,
        ),
      ),
    );
  }
}
