import 'package:hive/hive.dart';

part 'subdistrict.g.dart';

@HiveType(typeId: 5)
class Subdistrict {
  Subdistrict({
    required this.id,
    required this.provinceId,
    required this.districtId,
    required this.name,
  });
  @HiveField(0)
  int id;
  @HiveField(1)
  int provinceId;
  @HiveField(2)
  int districtId;
  @HiveField(3)
  String name;

  factory Subdistrict.fromJson(Map<String, dynamic> json) => Subdistrict(
        id: json['id'],
        provinceId: json['province_id'],
        districtId: json['district_id'],
        name: json['name'],
      );

  toJson() => {
        'id': id,
        'province_id': provinceId,
        'district_id': districtId,
        'name': name,
      };
}
