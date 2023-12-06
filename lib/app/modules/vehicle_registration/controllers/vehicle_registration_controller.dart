import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_dialog.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

class VehicleRegistrationController extends GetxController {
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
    Get.dialog(
      DefaultDialog(
        showCancel: true,
        onConfirm: () {
          Get.back();
          Get.toNamed(Routes.VEHICLE_SPEC_FORM);
        },
      ),
      arguments: {'test': 'test'},
    );
  }
}
