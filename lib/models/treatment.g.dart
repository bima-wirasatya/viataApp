// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Treatment _$TreatmentFromJson(Map<String, dynamic> json) => Treatment(
      json['jenis_kucing'] as String,
      json['foto'] as String,
      json['ciri_ciri'] as String,
      json['perawatan'] as String,
    );

Map<String, dynamic> _$TreatmentToJson(Treatment instance) => <String, dynamic>{
      'jenis_kucing': instance.catBreed,
      'foto': instance.photo,
      'ciri_ciri': instance.characteristics,
      'perawatan': instance.treatment,
    };
