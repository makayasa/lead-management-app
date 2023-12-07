import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

class DetailFinancingController extends GetxController {
  final hiveC = Get.find<HiveController>();
  final formKey = GlobalKey<FormBuilderState>();
  final formz = GlobalKey<FormBuilderFieldState>();

  final data = Financing.init().obs;

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
    final res = await hiveC.changeFinanceStatus(
      Get.arguments['financing_uuid'],
      status,
    );
  }

  void initialFunction() async {
    await getDetailFinancing();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    initialFunction();
  }
}
