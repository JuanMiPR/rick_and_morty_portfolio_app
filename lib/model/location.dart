import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Location({
    required this.id,
    required this.name,
    required this.dimension,
    required this.residents,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'dimension')
  String dimension;
  @JsonKey(name: 'residents')
  List<String> residents;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Location &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          dimension == other.dimension &&
          listEquals(residents, other.residents);

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ dimension.hashCode ^ residents.hashCode;
}
