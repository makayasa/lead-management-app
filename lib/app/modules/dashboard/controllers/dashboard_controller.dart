import 'package:get/get.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

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

  void createVehicle() {
    Get.toNamed(Routes.VEHICLE_REGISTRATION);
  }
}
