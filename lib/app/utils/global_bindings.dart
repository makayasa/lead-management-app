import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HiveController());
  }
}
