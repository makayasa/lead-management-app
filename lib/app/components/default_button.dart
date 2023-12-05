import 'package:flutter/material.dart';

import '../config/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.child,
    this.height,
    this.width,
    super.key,
  });
  final Widget child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: kDefaultBorderRadius10,
      ),
      child: child,
    );
  }
}
