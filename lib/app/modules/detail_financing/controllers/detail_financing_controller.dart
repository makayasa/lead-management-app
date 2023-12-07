import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';

class DetailFinancingController extends GetxController {
  final hiveC = Get.find<HiveController>();

  final data = Financing.init().obs;

  Future<void> getDetailFinancing() async {
    final uuid = Get.arguments['uuid'];
    hiveC.getFinanceById(uuid);
  }

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
}
