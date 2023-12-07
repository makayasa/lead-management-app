import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../components/default_text.dart';

class FinancingTabItem extends StatelessWidget {
  const FinancingTabItem({
    required this.text,
    required this.onTap,
    this.borderRadius,
    super.key,
  });
  final String text;
  final Function()? onTap;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: DefText(text).normal,
          ),
        ),
      ),
    );
  }
}
