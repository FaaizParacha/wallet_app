import 'package:flutter/material.dart';

class AnimatedAppIcon extends StatefulWidget {
  final String url;
  AnimatedAppIcon({required this.url});
  @override
  _AnimatedAppIconState createState() => _AnimatedAppIconState();
}

class _AnimatedAppIconState extends State<AnimatedAppIcon>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (BuildContext context, child) {
        return TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.4, end: 1.0),
          duration: Duration(seconds: 3),
          builder: (BuildContext context, double value, child) {
            return Transform.scale(
              scale: value,
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(widget.url,height: 170,)),
            );
          },
        );
      },
    );
  }
}