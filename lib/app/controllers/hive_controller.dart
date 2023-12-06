import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:lead_management_app/app/data/dummy_data.dart';
import 'package:lead_management_app/app/data/models/address/district.dart';
import 'package:lead_management_app/app/data/models/address/province.dart';
import 'package:lead_management_app/app/data/models/address/subdistrict.dart';
import 'package:lead_management_app/app/data/models/seller/seller.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../utils/function_utils.dart';

class HiveController extends GetxController {
  // final hiveBox = Hive.box('myBox');
  late Box hiveBox;
  final DummyData dummyData = DummyData();
  // late BoxCollection collection;
  // late CollectionBox<Map<dynamic, dynamic>> sellersBox;

  Future<void> insertDummySellers() async {
    var a = <Seller>[];
    for (var e in dummyData.dummySellers) {
      e['uuid'] = const Uuid().v4();
      final data = Seller.fromJson(e);
      a.add(data);
    }
    await hiveBox.put('sellers', a);
    logKey('insertDummy success');
  }

  Future<void> insertDummyProvince() async {
    var a = <Province>[];
    for (var e in dummyData.dataDummyProvinsi) {
      final data = Province.fromJson(e);
      a.add(data);
    }
    await hiveBox.put('province', a);
    logKey('insertDummy success');
  }

  Future<void> insertDummyDistrict() async {
    var a = <District>[];
    for (var e in dummyData.dataDummyDistrict) {
      final data = District.fromJson(e);
      a.add(data);
    }
    await hiveBox.put('district', a);
    logKey('insertDummy success');
  }

  Future<void> insertDummySubdistrict() async {
    var a = <Subdistrict>[];
    for (var e in dummyData.dataDummySubD) {
      final data = Subdistrict.fromJson(e);
      a.add(data);
    }
    await hiveBox.put('subdistrict', a);
    logKey('insertDummy success');
  }

  void initialFunction() async {
    // await hf.Hive.initFlutter();
    final directory = await getApplicationDocumentsDirectory();
    await Hive.openBox('myBox');
    // collection = await BoxCollection.open(
    //   'myBox',
    //   {'sellers'},
    //   path: directory.path,
    // );
    // sellersBox = await collection.openBox<Map>('sellers');
    hiveBox = Hive.box('myBox');
    await insertDummySellers();
    await insertDummyProvince();
    await insertDummyDistrict();
    await insertDummySubdistrict();
  }

  Future<List<Seller>?> getAllSellers() async {
    try {
      final res = await hiveBox.get('sellers');
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
    try {
      final res = await hiveBox.get('province');
      if (isEmpty(res)) {
        return null;
      }
      List<Province> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      return temp;
    } catch (e) {
      logKey('error getAllProvinces', e);
      return null;
    }
  }

  Future<List<District>?> getAllDistrict() async {
    try {
      final res = await hiveBox.get('district');
      if (isEmpty(res)) {
        return null;
      }
      List<District> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      return temp;
    } catch (e) {
      logKey('error getAllDistrict', e);
      return null;
    }
  }

  Future<List<District>?> getDistrictByProvId(int provinceId) async {
    try {
      final res = await hiveBox.get('district');
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
      return temp;
    } catch (e) {
      logKey('error getDistrictByProvId', e);
      return null;
    }
  }

  Future<List<Subdistrict>?> getAllSubdistrict() async {
    try {
      final res = await hiveBox.get('subdistrict');
      if (isEmpty(res)) {
        return null;
      }
      List<Subdistrict> temp = [];
      for (var e in res) {
        temp.add(e);
      }
      return temp;
    } catch (e) {
      logKey('error getAllSubdistrict', e);
      return null;
    }
  }

  Future<List<Subdistrict>?> getSubistrictByDistrictId(int districtId) async {
    try {
      final res = await hiveBox.get('subdistrict');
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
      return temp;
    } catch (e) {
      logKey('error getDistrictByDistrictId', e);
      return null;
    }
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

  Map<String, dynamic> convertToMapStringDynamic(dynamic input) {
    if (input is Map<dynamic, dynamic>) {
      Map<String, dynamic> resultMap = {};

      input.forEach((key, value) {
        // Menjamin bahwa kunci dapat diubah menjadi String
        if (key is String) {
          resultMap[key] = value;
        } else {
          // Lakukan penanganan sesuai dengan kebutuhan, contoh di sini hanya mengabaikan kunci yang bukan String
        }
      });

      return resultMap;
    } else {
      throw ArgumentError('Input is not of type Map<dynamic, dynamic>');
    }
  }
}
