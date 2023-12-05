import 'package:flutter/material.dart';

import '../config/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.child,
    this.height,
    this.width,
    super.key,
    this.onTap,
    this.color = kPrimaryColor,
    this.showBorder = false,
  });
  final Function()? onTap;
  final Widget child;
  final double? height;
  final double? width;
  final Color color;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: kDefaultBorderRadius10,
      child: InkWell(
        borderRadius: kDefaultBorderRadius10,
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: showBorder
              ? BoxDecoration(
                  border: Border.all(
                    color: kInactiveColor2,
                  ),
                  borderRadius: kDefaultBorderRadius10,
                )
              : null,
          padding: const EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }
}
