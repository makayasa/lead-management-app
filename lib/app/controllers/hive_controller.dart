import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:lead_management_app/app/config/constants.dart';
import 'package:lead_management_app/app/data/dummy_data.dart';
import 'package:lead_management_app/app/data/models/address/district.dart';
import 'package:lead_management_app/app/data/models/address/province.dart';
import 'package:lead_management_app/app/data/models/address/subdistrict.dart';
import 'package:lead_management_app/app/data/models/financing/financing.dart';
import 'package:lead_management_app/app/data/models/seller/seller.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../utils/function_utils.dart';

class HiveController extends GetxController {
  final DummyData _dummyData = DummyData();

  Future<void> insertDummySellers() async {
    final _seller = await Hive.openBox<Seller>(kSellerBox);
    if (_seller.isNotEmpty) {
      //* karena ini insert dummy jadi cukup 1x saja
      //* karena data dummy di hardcode di dalam dart kemudian dimasukkan ke hive
      await _seller.close();
      return;
    }
    var a = <Seller>[];
    for (var e in _dummyData.dummySellers) {
      e['uuid'] = const Uuid().v4();
      final data = Seller.fromJson(e);
      a.add(data);
      // await _seller.add(data);
    }
    await _seller.addAll(a);
    await _seller.close();
    // await _seller.put('sellers', a);
    logKey('insertDummy success');
  }

  Future<void> insertDummyProvince() async {
    final _province = await Hive.openBox<Province>(kProvinceBox);
    if (_province.isNotEmpty) {
      //* karena ini insert dummy jadi cukup 1x saja
      //* karena data dummy di hardcode di dalam dart kemudian dimasukkan ke hive
      await _province.close();
      return;
    }
    var a = <Province>[];
    for (var e in _dummyData.dataDummyProvinsi) {
      final data = Province.fromJson(e);
      a.add(data);
    }
    // await hiveBox.put('province', a);
    await _province.addAll(a);
    await _province.close();
    logKey('insertDummy success');
  }

  Future<void> insertDummyDistrict() async {
    final _district = await Hive.openBox<District>(kDistrictBox);
    if (_district.isNotEmpty) {
      //* karena ini insert dummy jadi cukup 1x saja
      //* karena data dummy di hardcode di dalam dart kemudian dimasukkan ke hive
      await _district.close();
      return;
    }
    var a = <District>[];
    for (var e in _dummyData.dataDummyDistrict) {
      final data = District.fromJson(e);
      a.add(data);
    }
    // await hiveBox.put('district', a);
    await _district.addAll(a);
    await _district.close();
    logKey('insertDummy success');
  }

  Future<void> insertDummySubdistrict() async {
    final _subdis = await Hive.openBox<Subdistrict>(kSubdistrictBox);
    if (_subdis.isNotEmpty) {
      //* karena ini insert dummy jadi cukup 1x saja
      //* karena data dummy di hardcode di dalam dart kemudian dimasukkan ke hive
      await _subdis.close();
      return;
    }
    var a = <Subdistrict>[];
    for (var e in _dummyData.dataDummySubD) {
      final data = Subdistrict.fromJson(e);
      a.add(data);
    }
    // await hiveBox.put('subdistrict', a);
    await _subdis.addAll(a);
    await _subdis.close();
    logKey('insertDummy success');
  }

  Future<List<Seller>?> getAllSellers() async {
    try {
      // final res = await hiveBox.values;
      final isOpen = await Hive.isBoxOpen(kSellerBox);
      final seller = await Hive.openBox(kSellerBox);
      final res = seller.values;
      if (isEmpty(res)) {
        return null;
      }
      List<Seller> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      return temp;
    } catch (e) {
      logKey('error getAllSellers', e);
      return null;
    }
  }

  Future<List<Province>?> getAllProvinces() async {
    final province = await Hive.openBox(kProvinceBox);
    try {
      final res = await province.values;
      if (isEmpty(res)) {
        return null;
      }
      List<Province> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      await province.close();
      return temp;
    } catch (e) {
      await province.close();
      logKey('error getAllProvinces', e);
      return null;
    }
  }

  Future<List<District>?> getAllDistrict() async {
    final district = await Hive.openBox(kDistrictBox);
    try {
      final res = await district.values;
      if (isEmpty(res)) {
        return null;
      }
      List<District> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      await district.close();
      return temp;
    } catch (e) {
      await district.close();
      logKey('error getAllDistrict', e);
      return null;
    }
  }

  Future<List<District>?> getDistrictByProvId(int provinceId) async {
    final district = await Hive.openBox(kDistrictBox);
    try {
      final res = await district.values;
      if (isEmpty(res)) {
        return null;
      }
      List<District> temp = [];
      for (District e in res) {
        if (e.provinceId == provinceId) {
          temp.add(e);
        }
      }
      if (isEmpty(temp)) {
        return null;
      }
      district.close();
      return temp;
    } catch (e) {
      await district.close();
      logKey('error getDistrictByProvId', e);
      return null;
    }
  }

  Future<List<Subdistrict>?> getAllSubdistrict() async {
    final subDis = await Hive.openBox(kSubdistrictBox);
    try {
      final res = await subDis.values;
      if (isEmpty(res)) {
        return null;
      }
      List<Subdistrict> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      await subDis.close();

      return temp;
    } catch (e) {
      logKey('error getAllSubdistrict', e);
      return null;
    }
  }

  Future<List<Subdistrict>?> getSubistrictByDistrictId(int districtId) async {
    final subDis = await Hive.openBox(kSubdistrictBox);

    try {
      final res = await subDis.values;
      if (isEmpty(res)) {
        return null;
      }
      List<Subdistrict> temp = [];
      for (Subdistrict e in res) {
        if (e.districtId == districtId) {
          temp.add(e);
        }
      }
      if (isEmpty(temp)) {
        return null;
      }
      await subDis.close();
      return temp;
    } catch (e) {
      logKey('error getDistrictByDistrictId', e);
      await subDis.close();
      return null;
    }
  }

  Future<void> createFinance(Financing financing) async {
    final financingBox = await Hive.openBox<Financing>(kFinancingBox);
    await financingBox.add(financing);
    await financingBox.close();
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

  void initialFunction() async {
    await getApplicationDocumentsDirectory();
    await insertDummySellers();
    await insertDummyProvince();
    await insertDummyDistrict();
    await insertDummySubdistrict();
  }
}
