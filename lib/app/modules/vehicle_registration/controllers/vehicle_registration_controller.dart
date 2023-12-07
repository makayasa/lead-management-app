import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_dialog.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

import '../../../config/constants.dart';

class VehicleRegistrationController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  final formKey = GlobalKey<FormBuilderState>();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void next() {
    logKey('zzxxcc', textEditingController.text);
    final isValid = formKey.currentState!.saveAndValidate();
    if (!isValid) {
      return;
    }
    Get.focusScope!.unfocus();
    final splitLicensePlate = spitLicensePlate(formKey.currentState!.value['license_plate']);
    Get.dialog(
      DefaultDialog(
        showCancel: true,
        title: '${splitLicensePlate[0]} ${splitLicensePlate[1]} ${splitLicensePlate[2]}',
        onConfirm: () {
          Get.back();
          Get.toNamed(
            Routes.VEHICLE_SPEC_FORM,
            arguments: {
              'license_plate': formKey.currentState!.value['license_plate'],
            },
          );
        },
        message: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Make sure that the numner you put in is correct, because it'll be ",
                style: kDefaultTextStyle.copyWith(fontSize: 12.7),
              ),
              TextSpan(
                text: 'unreplaceable',
                style: kDefaultTextStyle.copyWith(color: kRed, fontSize: 12.7),
              ),
              TextSpan(
                text: " after you clicking the next button down bellow",
                style: kDefaultTextStyle.copyWith(fontSize: 12.7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
