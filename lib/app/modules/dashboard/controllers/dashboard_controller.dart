import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';
import 'package:lead_management_app/app/utils/helpers/financing_card_helpers.dart';

import '../../../config/constants.dart';
import '../../../data/models/financing/financing.dart';

class DashboardController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final hiveC = HiveController();

  final listingCount = 0.obs;
  final inspectionCount = 0.obs;
  final visitedCount = 0.obs;
  final assigningCount = 0.obs;
  final surveyingCount = 0.obs;
  final approvalCount = 0.obs;
  final purchasingOrderCount = 0.obs;
  final rejectedCount = 0.obs;
  final notavailCount = 0.obs;

  void listenHive() async {
    final financingBox = await hiveC.hive.openBox<Financing>(kFinancingBox);
    financingBox.listenable().addListener(() {
      getCount();
    });
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 1, vsync: this);
    listenHive();
    initialFunction();
  }

  void initialFunction() async {
    getCount();
  }

  void getCount() async {
    final financingBox = await hiveC.hive.openBox<Financing>(kFinancingBox);
    listingCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.LISTING).length;
    inspectionCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.INSPECTING).length;
    visitedCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.VISITED).length;
    assigningCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.ASSIGNING_SURVEYOR).length;
    surveyingCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.SURVEYING).length;
    approvalCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.APPROVAL).length;
    purchasingOrderCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.PURCHASING_ORDER).length;
    rejectedCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.REJECTED).length;
    notavailCount.value = financingBox.values.where((element) => element.status == FinancingStatusHelpers.UNIT_NOT_AVAILABLE).length;
  }

  void createVehicle() {
    Get.toNamed(Routes.VEHICLE_REGISTRATION);
  }
}
