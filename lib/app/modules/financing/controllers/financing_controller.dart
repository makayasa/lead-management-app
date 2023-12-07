import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';

class FinancingController extends GetxController {
  //TODO: Implement FinancingController
  final hiveC = Get.find<HiveController>();
  final listFinancing = <Financing>[].obs;

  Future<void> getFinancings() async {
    List<Financing> temp = await hiveC.getAllFinancing() ?? [];
    listFinancing.assignAll(temp);
  }

  void toDeatilFinancing(String uuid) async {
    // final res = await hiveC.getFinanceById(uuid);
    // if (res == null) {
    //   return;
    // }
    Get.toNamed(
      Routes.DETAIL_FINANCING,
      arguments: {
        'financing_uuid': uuid,
      },
    );
  }

  void initialFunction() async {
    await getFinancings();
  }

  @override
  void onInit() {
    super.onInit();
    initialFunction();
  }


}
