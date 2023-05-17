// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int,
      name: json['name'] as String,
      origin: Origin.fromJson(json['origin'] as Map<String, dynamic>),
      location: Origin.fromJson(json['location'] as Map<String, dynamic>),
      status: $enumDecode(_$StatusEnumMap, json['status'],
          unknownValue: Status.unknown),
      image: json['image'] as String,
      episodes:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'location': instance.location,
      'status': _$StatusEnumMap[instance.status]!,
      'image': instance.image,
      'episode': instance.episodes,
    };

const _$StatusEnumMap = {
  Status.alive: 'Alive',
  Status.dead: 'Dead',
  Status.unknown: 'unknown',
};
