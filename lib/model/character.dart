import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_portfolio_app/model/status_enum.dart';

import 'origin.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  Character({
    required this.id,
    required this.name,
    required this.origin,
    required this.location,
    required this.status,
    required this.image,
    required this.episodes,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);

  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'origin')
  Origin origin;
  @JsonKey(name: 'location')
  Origin location;
  @JsonKey(name: 'status', unknownEnumValue: Status.unknown)
  Status status;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'episode')
  List<String> episodes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Character &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          origin == other.origin &&
          location == other.location &&
          status == other.status &&
          image == other.image &&
          episodes == other.episodes;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      origin.hashCode ^
      location.hashCode ^
      status.hashCode ^
      image.hashCode ^
      episodes.hashCode;
}
