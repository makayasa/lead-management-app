import 'package:get/get.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';

import '../../../routes/app_pages.dart';

class FormCreatedController extends GetxController {
  void checkCard() {
    // Get.offNamedUntil(Routes.DASHBOARD, (route) => false);
    logKey('arguments', Get.arguments);
    final financingUuid = Get.arguments['financing_uuid'];
    // return;
    Get.until((route) => Get.currentRoute == Routes.DASHBOARD);
    // return;
    // Get.close(3);
    // Get.toNamed(page)
    Get.toNamed(Routes.FINANCING);
    Get.toNamed(
      Routes.DETAIL_FINANCING,
      arguments: {
        'financing_uuid': financingUuid,
      },
    );
  }

  void submitAnother() {
    Get.offNamedUntil(Routes.VEHICLE_REGISTRATION, (route) => false);
  }

  void backToHome() {
    Get.offNamedUntil(Routes.DASHBOARD, (route) => false);
  }
}
