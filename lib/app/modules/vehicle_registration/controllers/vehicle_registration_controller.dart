import 'package:get/get.dart';
import 'package:lead_management_app/app/components/default_dialog.dart';

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
      DefaultDialog(),
      arguments: {
        'test':'test'
      },
    );
  }
}
