import 'package:get/get.dart';

import '../controllers/vehicle_spec_form_controller.dart';

class VehicleSpecFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleSpecFormController>(
      () => VehicleSpecFormController(),
    );
  }
}
