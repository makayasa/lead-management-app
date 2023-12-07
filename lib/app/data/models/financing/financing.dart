import 'package:hive/hive.dart';
import 'package:lead_management_app/app/data/models/address/district.dart';
import 'package:lead_management_app/app/data/models/address/province.dart';
import 'package:lead_management_app/app/data/models/address/subdistrict.dart';
import 'package:lead_management_app/app/data/models/seller/seller.dart';

part 'financing.g.dart';

@HiveType(typeId: 7)
class Financing {
  Financing({
    required this.uuid,
    required this.licensePlate,
    required this.condition,
    required this.brand,
    required this.model,
    required this.variant,
    required this.manufactureYear,
    required this.mileAge,
    required this.fuelType,
    required this.transmission,
    required this.exteriorColor,
    required this.price,
    required this.notes,
    required this.seller,
    required this.province,
    required this.district,
    required this.subdistrict,
  });

  @HiveField(0)
  String uuid;
  @HiveField(1)
  String licensePlate;
  @HiveField(2)
  String condition;
  @HiveField(3)
  String brand;
  @HiveField(4)
  String model;
  @HiveField(5)
  String variant;
  @HiveField(6)
  int manufactureYear;
  @HiveField(7)
  String mileAge;
  @HiveField(8)
  String fuelType;
  @HiveField(9)
  String transmission;
  @HiveField(10)
  String exteriorColor;
  @HiveField(11)
  int price;
  @HiveField(12)
  String notes;
  @HiveField(13)
  Seller seller;
  @HiveField(14)
  Province province;
  @HiveField(15)
  District district;
  @HiveField(16)
  Subdistrict subdistrict;

  factory Financing.fromJson(Map<String, dynamic> json) => Financing(
        uuid: json['uuid'],
        licensePlate: json['license_plate'],
        condition: json['condition'],
        brand: json['brand'],
        model: json['model'],
        variant: json['variant'],
        manufactureYear: json['manufacture_year'],
        mileAge: json['mileage'],
        fuelType: json['fuel_type'],
        transmission: json['transmission'],
        exteriorColor: json['exterior_color'],
        price: json['price'],
        notes: json['notes'],
        seller: json['seller'] is Seller ? json['seller'] : Seller.fromJson(json['seller']),
        province: json['province'] is Province ? json['province'] : Province.fromJson(json['province']),
        district: json['district'] is District ? json['district'] : District.fromJson(json['district']),
        subdistrict: json['sub_district'] is Subdistrict ? json['sub_district'] : Subdistrict.fromJson(json['sub_district']),
      );

  factory Financing.init() => Financing(
        uuid: '',
        licensePlate: '',
        condition: '',
        brand: '',
        model: '',
        variant: '',
        manufactureYear: 0,
        mileAge: '',
        fuelType: '',
        transmission: '',
        exteriorColor: '',
        price: 0,
        notes: '',
        seller: Seller.init(),
        province: Province.init(),
        district: District.init(),
        subdistrict: Subdistrict.init(),
      );

  toJson() => {
        'uuid': uuid,
        'license_plate': licensePlate,
        'condition': condition,
        'brand': brand,
        'model': model,
        'variant': variant,
        'manufacture_year': manufactureYear,
        'mileage': mileAge,
        'fuel_type': fuelType,
        'transmission': transmission,
        'exterior_color': exteriorColor,
        'price': price,
        'notes': notes,
        'seller': seller.toJson(),
        'province': province.toJson(),
        'district': district.toJson(),
        'sub_district': subdistrict.toJson(),
      };
}
