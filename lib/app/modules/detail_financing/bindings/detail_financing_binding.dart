import 'package:get/get.dart';

import '../controllers/detail_financing_controller.dart';

class DetailFinancingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailFinancingController>(
      () => DetailFinancingController(),
    );
  }
}
