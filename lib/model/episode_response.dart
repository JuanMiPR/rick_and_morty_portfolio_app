import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_portfolio_app/model/episode.dart';
import 'package:rick_and_morty_portfolio_app/model/pagination_info.dart';

part 'episode_response.g.dart';

@JsonSerializable()
class EpisodeResponse {
  const EpisodeResponse({
    required this.info,
    required this.results,
  });

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeResponseToJson(this);

  @JsonKey(name: 'info')
  final PaginationInfo info;

  @JsonKey(name: 'results')
  final List<Episode> results;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EpisodeResponse &&
          runtimeType == other.runtimeType &&
          info == other.info &&
          listEquals(results, other.results);

  @override
  int get hashCode => info.hashCode ^ results.hashCode;
}
