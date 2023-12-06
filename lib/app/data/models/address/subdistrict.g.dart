// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subdistrict.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubdistrictAdapter extends TypeAdapter<Subdistrict> {
  @override
  final int typeId = 5;

  @override
  Subdistrict read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subdistrict(
      id: fields[0] as int,
      provinceId: fields[1] as int,
      districtId: fields[2] as int,
      name: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Subdistrict obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.provinceId)
      ..writeByte(2)
      ..write(obj.districtId)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubdistrictAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
