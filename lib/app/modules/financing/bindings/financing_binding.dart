import 'package:get/get.dart';

import '../controllers/financing_controller.dart';

class FinancingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinancingController>(
      () => FinancingController(),
    );
  }
}
