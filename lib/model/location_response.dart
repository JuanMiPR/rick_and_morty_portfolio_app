import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_portfolio_app/model/location.dart';
import 'package:rick_and_morty_portfolio_app/model/pagination_info.dart';

part 'location_response.g.dart';

@JsonSerializable()
class LocationResponse {
  const LocationResponse({
    required this.info,
    required this.results,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);

  @JsonKey(name: 'info')
  final PaginationInfo info;

  @JsonKey(name: 'results')
  final List<Location> results;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationResponse &&
          runtimeType == other.runtimeType &&
          info == other.info &&
          listEquals(results, other.results);

  @override
  int get hashCode => info.hashCode ^ results.hashCode;
}
