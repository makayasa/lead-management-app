import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lead_management_app/app/controllers/hive_controller.dart';
import 'package:lead_management_app/app/data/models/address/district.dart';
import 'package:lead_management_app/app/data/models/address/province.dart';
import 'package:lead_management_app/app/data/models/address/subdistrict.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/data/models/seller/seller.dart';
import 'package:lead_management_app/app/routes/app_pages.dart';
import 'package:lead_management_app/app/utils/function_utils.dart';
import 'package:uuid/uuid.dart';

class FinancingFormController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();
  final testKey = GlobalKey<FormBuilderFieldState>();
  final hiveC = Get.find<HiveController>();

  final sellers = <Seller>[].obs;
  final provinces = <Province>[].obs;
  final districts = <District>[].obs;
  final subdistrcts = <Subdistrict>[].obs;

  void getSellers() async {
    List<Seller> res = await hiveC.getAllSellers() ?? [];
    if (isEmpty(res)) {
      return;
    }
    sellers.assignAll(res);
  }

  void getAllProvince() async {
    List<Province> res = await hiveC.getAllProvinces() ?? [];
    provinces.assignAll(res);
  }

  void getDistrict(int provId) async {
    List<District> res = await hiveC.getDistrictByProvId(provId) ?? [];
    districts.assignAll(res);
  }

  void getSubDistrict(int districtId) async {
    List<Subdistrict> res = await hiveC.getSubistrictByDistrictId(districtId) ?? [];
    subdistrcts.assignAll(res);
  }

  void cleardistrict() {
    districts
      ..clear()
      ..refresh();

    subdistrcts
      ..clear()
      ..refresh();
  }

  void next() async {
    final isValid = formKey.currentState!.saveAndValidate();
    if (!isValid) {
      return;
    }
    final uuid = const Uuid().v4();
    Map<String, dynamic> temp = {};
    var data = formKey.currentState!.value;
    temp.assignAll(data);
    temp['uuid'] = uuid;
    temp['license_plate'] = Get.arguments['license_plate'];
    String priceBefore = temp['price'];
    priceBefore = priceBefore.replaceAll(',', '');
    final newPrice = int.parse(priceBefore);
    temp['price'] = newPrice;
    var financingData = Financing.fromJson(temp);
    await hiveC.createFinance(financingData);
    logKey('financing created');
    Get.toNamed(
      Routes.FORM_CREATED,
      arguments: {
        'financing_uuid': financingData.uuid,
      },
    );
  }

  void initialFunction() async {
    getSellers();
    getAllProvince();
  }

  @override
  void onInit() {
    super.onInit();
    initialFunction();
  }
}
