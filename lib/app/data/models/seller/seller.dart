import 'package:hive/hive.dart';
import 'package:lead_management_app/app/data/models/seller/address.dart';

part 'seller.g.dart';

@HiveType(typeId: 1)
class Seller {
  Seller({
    required this.uuid,
    required this.sellerName,
    required this.phoneNumber,
    required this.address,
  });
  @HiveField(0)
  String uuid;
  @HiveField(1)
  String sellerName;
  @HiveField(2)
  String phoneNumber;
  @HiveField(3)
  Address address;

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
        uuid: json['uuid'],
        sellerName: json['seller_name'],
        phoneNumber: json['phone_number'],
        address: Address.fromJson(json['address']),
      );

  factory Seller.init() => Seller(
        uuid: '',
        sellerName: '',
        phoneNumber: '',
        address: Address.init(),
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'seller_name': sellerName,
        'phone_number': phoneNumber,
        'address': address.toJson(),
      };
}
