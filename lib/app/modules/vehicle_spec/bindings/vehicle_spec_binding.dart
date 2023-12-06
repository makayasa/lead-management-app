import 'package:get/get.dart';

import '../controllers/vehicle_spec_controller.dart';

class VehicleSpecBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleSpecController>(
      () => VehicleSpecController(),
    );
  }
}
