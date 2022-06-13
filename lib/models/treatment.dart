import 'package:json_annotation/json_annotation.dart';

part 'treatment.g.dart';

@JsonSerializable()
class Treatment {
  @JsonKey(name: 'jenis_kucing')
  final String catBreed;

  @JsonKey(name: 'foto')
  final String photo;

  @JsonKey(name: 'ciri_ciri')
  final String characteristics;

  @JsonKey(name: 'perawatan')
  final String treatment;

  Treatment(this.catBreed, this.photo, this.characteristics, this.treatment);

  factory Treatment.fromJson(Map<String, dynamic> json) =>
      _$TreatmentFromJson(json);

  Map<String, dynamic> toJson() => _$TreatmentToJson(this);
}
