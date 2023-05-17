import 'package:json_annotation/json_annotation.dart';

part 'pagination_info.g.dart';

@JsonSerializable()
class PaginationInfo {
  PaginationInfo({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationInfoToJson(this);

  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'pages')
  int pages;
  @JsonKey(name: 'next')
  String next;
  @JsonKey(name: 'prev')
  String prev;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationInfo &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          pages == other.pages &&
          next == other.next &&
          prev == other.prev;

  @override
  int get hashCode =>
      count.hashCode ^ pages.hashCode ^ next.hashCode ^ prev.hashCode;
}
