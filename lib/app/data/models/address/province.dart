import 'package:hive/hive.dart';
part 'province.g.dart';

@HiveType(typeId: 3)
class Province {
  Province({
    required this.id,
    required this.name,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;

  factory Province.fromJson(Map<String, dynamic> json) => Province(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
