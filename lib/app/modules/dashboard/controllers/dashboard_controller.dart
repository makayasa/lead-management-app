import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

class DashboardController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement DashboardController

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 1, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void createVehicle() {
    Get.toNamed(Routes.VEHICLE_REGISTRATION);
  }
}
