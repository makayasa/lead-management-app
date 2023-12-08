import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';
import 'package:lead_management_app/app/utils/helpers/financing_card_helpers.dart';

class FinancingController extends GetxController {
  //TODO: Implement FinancingController
  final hiveC = Get.find<HiveController>();
  final status = FinancingStatusHelpers.LISTING.obs;
  // var listAllFinancing = <Financing>[].obs;
  final listFinancing = <Financing>[].obs;

  Future<void> getFinancings() async {
    List<Financing> temp = await hiveC.getAllFinancing() ?? [];
    // listAllFinancing.assignAll(temp);
    listFinancing.assignAll(temp);
  }

  void toDeatilFinancing(String uuid) async {
    await Get.toNamed(
      Routes.DETAIL_FINANCING,
      arguments: {
        'financing_uuid': uuid,
      },
    );
    getFinancingsByStatus(status: status.value);
  }

  Future<void> getFinancingsByStatus({String status = FinancingStatusHelpers.LISTING}) async {
    final res = await hiveC.getAllFinancingByStatus(status) ?? [];
    listFinancing.assignAll(res);
  }

  void initialFunction() async {
    status.value = Get.arguments['status'] ?? FinancingStatusHelpers.LISTING;
    // await getFinancings();
    await getFinancingsByStatus(status: status.value);
  }

  @override
  void onInit() {
    super.onInit();
    initialFunction();
  }
}
