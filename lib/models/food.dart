import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name: 'nama')
  final String name;

  final String detail;

  @JsonKey(name: 'jenis')
  final String type;

  @JsonKey(name: 'harga')
  final int price;

  Food(
    this.name,
    this.type,
    this.price,
    this.detail,
  );

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
