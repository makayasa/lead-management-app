import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lead_management_app/app/config/constants.dart';

import '../../../components/default_text.dart';

class FinancingTabItem extends StatelessWidget {
  const FinancingTabItem({
    required this.text,
    required this.onTap,
    this.borderRadius,
    this.isSelected = false,
    super.key,
  });
  final String text;
  final Function()? onTap;
  final BorderRadius? borderRadius;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? kInactiveColor2 : kBgWhite,
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
