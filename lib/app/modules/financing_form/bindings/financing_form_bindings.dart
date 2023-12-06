import 'package:get/get.dart';

import '../controllers/financing_form_controller.dart';

class FinancingFormBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinancingFormController>(
      () => FinancingFormController(),
    );
  }
}
