import 'package:json_annotation/json_annotation.dart';

part 'disease.g.dart';

@JsonSerializable()
class Disease {
  @JsonKey(name: 'nama')
  final String name;

  final String detail;

  @JsonKey(name: 'foto')
  final String photo;

  Disease(this.name, this.detail, this.photo);

  factory Disease.fromJson(Map<String, dynamic> json) =>
      _$DiseaseFromJson(json);

  Map<String, dynamic> toJson() => _$DiseaseToJson(this);
}
