import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

class DetailFinancingController extends GetxController {
  final hiveC = Get.find<HiveController>();
  final formKey = GlobalKey<FormBuilderState>();
  final formz = GlobalKey<FormBuilderFieldState>();

  final data = Financing.init().obs;

  final canPop = true.obs;

  final fromRegist = false.obs;

  Future<void> getDetailFinancing() async {
    final uuid = Get.arguments['financing_uuid'];
    final res = await hiveC.getFinanceById(uuid);
    if (res == null) {
      return;
    }
    data.value = res;
    data.refresh();
    formz.currentState!.didChange(data.value.status);
  }

  void changeStatus(String status) async {
    await hiveC.changeFinanceStatus(
      Get.arguments['financing_uuid'],
      status,
    );
  }

  void popView() {
    canPop.value = true;
    if (fromRegist.value) {
      Get.offNamed(Routes.FINANCING);
    } else {
      Get.back();
    }
  }

  void initialFunction() async {
    fromRegist.value = Get.arguments?['from_regist'] ?? false;
    await getDetailFinancing();
  }

  @override
  void onReady() {
    super.onReady();
    initialFunction();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
