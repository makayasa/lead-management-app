import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_button.dart';
import 'package:lead_management_app/app/components/default_rich_text.dart';
import 'package:lead_management_app/app/components/default_text.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

import 'pulse_container.dart';

class DefaultDialog extends StatelessWidget {
  const DefaultDialog({
    required this.title,
    required this.message,
    super.key,
    this.onConfirm,
    this.onCancel,
    this.showCancel = false,
    this.confirmText = 'Confirm',
    this.cancelText = 'Cancel',
  });
  final Function()? onConfirm;
  final Function()? onCancel;
  final bool showCancel;

  final String title;
  final Widget message;

  final String confirmText;
  final String cancelText;
  @override
  Widget build(BuildContext context) {
    // final arg = Get.arguments as Map;
    // logKey('arg', arg);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4.3, sigmaY: 4.3),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 250,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(color: kBgWhite, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PulseContainer(
                    color: kOrange,
                    height: 46,
                    child: Icon(
                      Icons.info_outline,
                      color: kOrange,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.close,
                      color: kBgBlack,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // DefText('B 2323 SLI').large,
              DefText(title).large,
              const SizedBox(height: 10),
              message,
              const SizedBox(height: 15),
              DefaultButton(
                width: double.infinity,
                onTap: onConfirm,
                child: Center(
                  child: DefText('Next', color: kBgWhite).normal,
                ),
              ),
              if (showCancel) const SizedBox(height: 10),
              if (showCancel)
                DefaultButton(
                  width: double.infinity,
                  color: kBgWhite,
                  showBorder: true,
                  onTap: onCancel ?? Get.back,
                  child: Center(
                    child: DefText('Cancel').normal,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
