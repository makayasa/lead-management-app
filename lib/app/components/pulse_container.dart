import 'package:flutter/material.dart';

import '../config/constants.dart';

class PulseContainer extends StatelessWidget {
  const PulseContainer({
    super.key,
    this.color = kOrange,
    this.height = 55,
    required this.child,
  });

  final Color color;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: height - 5,
          width: height - 5,
          decoration: BoxDecoration(
            color: color.withAlpha(40),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: height - 10,
              width: height - 10,
              decoration: BoxDecoration(
                color: color.withAlpha(65),
                shape: BoxShape.circle,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
