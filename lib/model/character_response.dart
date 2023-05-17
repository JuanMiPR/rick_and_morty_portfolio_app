import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_portfolio_app/model/pagination_info.dart';

import 'character.dart';

part 'character_response.g.dart';

@JsonSerializable()
class CharacterResponse {
  const CharacterResponse({
    required this.info,
    required this.results,
  });

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterResponseToJson(this);

  @JsonKey(name: 'info')
  final PaginationInfo info;

  @JsonKey(name: 'results')
  final List<Character> results;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterResponse &&
          runtimeType == other.runtimeType &&
          info == other.info &&
          listEquals(results, other.results);

  @override
  int get hashCode => info.hashCode ^ results.hashCode;
}
