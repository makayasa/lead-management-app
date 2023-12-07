// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financing.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FinancingAdapter extends TypeAdapter<Financing> {
  @override
  final int typeId = 7;

  @override
  Financing read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Financing(
      uuid: fields[0] as String,
      licensePlate: fields[1] as String,
      condition: fields[2] as String,
      brand: fields[3] as String,
      model: fields[4] as String,
      variant: fields[5] as String,
      manufactureYear: fields[6] as int,
      mileAge: fields[7] as String,
      fuelType: fields[8] as String,
      transmission: fields[9] as String,
      exteriorColor: fields[10] as String,
      price: fields[11] as int,
      notes: fields[12] as String,
      seller: fields[13] as Seller,
      province: fields[14] as Province,
      district: fields[15] as District,
      subdistrict: fields[16] as Subdistrict,
      status: fields[17] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Financing obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.licensePlate)
      ..writeByte(2)
      ..write(obj.condition)
      ..writeByte(3)
      ..write(obj.brand)
      ..writeByte(4)
      ..write(obj.model)
      ..writeByte(5)
      ..write(obj.variant)
      ..writeByte(6)
      ..write(obj.manufactureYear)
      ..writeByte(7)
      ..write(obj.mileAge)
      ..writeByte(8)
      ..write(obj.fuelType)
      ..writeByte(9)
      ..write(obj.transmission)
      ..writeByte(10)
      ..write(obj.exteriorColor)
      ..writeByte(11)
      ..write(obj.price)
      ..writeByte(12)
      ..write(obj.notes)
      ..writeByte(13)
      ..write(obj.seller)
      ..writeByte(14)
      ..write(obj.province)
      ..writeByte(15)
      ..write(obj.district)
      ..writeByte(16)
      ..write(obj.subdistrict)
      ..writeByte(17)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FinancingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
