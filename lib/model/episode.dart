import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode.g.dart';

@JsonSerializable()
class Episode {
  Episode({
    required this.id,
    required this.name,
    required this.airDate,
    required this.characters,
  });

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);

  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'air_date')
  DateTime airDate;
  @JsonKey(name: 'characters')
  List<String> characters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Episode &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          airDate == other.airDate &&
          listEquals(characters, other.characters);

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ airDate.hashCode ^ characters.hashCode;
}
