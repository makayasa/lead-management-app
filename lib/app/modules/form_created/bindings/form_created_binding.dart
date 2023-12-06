import 'package:get/get.dart';

import '../controllers/form_created_controller.dart';

class FormCreatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormCreatedController>(
      () => FormCreatedController(),
    );
  }
}
