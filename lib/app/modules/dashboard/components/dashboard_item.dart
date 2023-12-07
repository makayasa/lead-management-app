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
    this.isOpen = true,
    this.onTap,
  });
  final String title;
  final String desc;
  final int number;
  final Function()? onTap;
  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBgWhite.withOpacity(0),
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              // decoration: const BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: kPrimaryColor,
              // ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  isOpen ? 'assets/green-logo.png' : 'assets/blue-logo.png',
                  fit: BoxFit.fill,
                ),
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
        ),
      ),
    );
  }
}
