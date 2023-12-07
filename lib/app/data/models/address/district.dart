import 'package:hive/hive.dart';
part 'district.g.dart';

@HiveType(typeId: 4)
class District {
  District({
    required this.id,
    required this.provinceId,
    required this.name,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  int provinceId;
  @HiveField(2)
  String name;
  @HiveField(3)
  factory District.fromJson(Map<String, dynamic> json) => District(
        id: json['id'],
        provinceId: json['province_id'],
        name: json['name'],
      );
  factory District.init() => District(
        id: -1,
        name: '',
        provinceId: -1,
      );

  toJson() => {
        'id': id,
        'province_id': provinceId,
        'name': name,
      };
}
