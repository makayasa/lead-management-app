import 'package:hive/hive.dart';

part 'address.g.dart';

@HiveType(typeId: 2)
class Address {
  Address({
    required this.province,
    required this.district,
    required this.subDistrict,
    required this.fullAddress,
  });
  @HiveField(0)
  String province;
  @HiveField(1)
  String district;
  @HiveField(2)
  String subDistrict;
  @HiveField(3)
  String fullAddress;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        province: json['province'],
        district: json['district'],
        subDistrict: json['sub_district'],
        fullAddress: json['full_address'],
      );

  Map<String, dynamic> toJson() => {
        'province': province,
        'district': district,
        'sub_district': subDistrict,
        'full_address': fullAddress,
      };
}
