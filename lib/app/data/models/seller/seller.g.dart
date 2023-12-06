// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SellerAdapter extends TypeAdapter<Seller> {
  @override
  final int typeId = 1;

  @override
  Seller read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Seller(
      uuid: fields[0] as String,
      sellerName: fields[1] as String,
      phoneNumber: fields[2] as String,
      address: fields[3] as Address,
    );
  }

  @override
  void write(BinaryWriter writer, Seller obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.sellerName)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SellerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
