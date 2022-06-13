// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      json['nama'] as String,
      json['jenis'] as String,
      json['harga'] as int,
      json['detail'] as String,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'nama': instance.name,
      'detail': instance.detail,
      'jenis': instance.type,
      'harga': instance.price,
    };
