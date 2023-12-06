import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/constants.dart';
import 'default_text.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          // onTap: () {
          //   Get.back();
          // },
          onTap: onTap ?? Get.back,
          child: const Icon(
            Icons.arrow_back,
            size: 20,
          ),
        ),
        const SizedBox(width: 5),
        DefText(text, color: kPrimaryColor).normal,
      ],
    );
  }
}
