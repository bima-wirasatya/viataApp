// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disease _$DiseaseFromJson(Map<String, dynamic> json) => Disease(
      json['nama'] as String,
      json['detail'] as String,
      json['foto'] as String,
    );

Map<String, dynamic> _$DiseaseToJson(Disease instance) => <String, dynamic>{
      'nama': instance.name,
      'detail': instance.detail,
      'foto': instance.photo,
    };
