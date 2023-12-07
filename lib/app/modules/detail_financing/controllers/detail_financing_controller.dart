import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

class DetailFinancingController extends GetxController {
  final hiveC = Get.find<HiveController>();

  final data = Financing.init().obs;

  Future<void> getDetailFinancing() async {
    final uuid = Get.arguments['financing_uuid'];
    final res = await hiveC.getFinanceById(uuid);
    if (res == null) {
      return;
    }
    data.value = res;
    data.refresh();
  }

  void initialFunction() async {
    await getDetailFinancing();
  }

  @override
  void onInit() {
    super.onInit();
    initialFunction();
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
