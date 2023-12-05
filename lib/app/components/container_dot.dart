import 'package:flutter/material.dart';

import '../config/constants.dart';

class ContainerDot extends StatelessWidget {
  const ContainerDot({
    Key? key,
    this.color = kPrimaryColor,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: color.withAlpha(50),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: color.withAlpha(100),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
