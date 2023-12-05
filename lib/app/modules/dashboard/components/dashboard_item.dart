import 'package:flutter/material.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

import '../../../components/default_text.dart';
import '../../../config/constants.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    super.key,
    required this.title,
    required this.desc,
    required this.number,
  });
  final String title;
  final String desc;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefText(title).semilarge,
              DefText(desc, color: kInactiveColor).normal,
            ],
          ),
        ),
        DefText(formatNumber(number)).normal,
      ],
    );
  }
}
