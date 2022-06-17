// // ignore_for_file: public_member_api_docs, invalid_annotation_target

// ignore_for_file: public_member_api_docs, invalid_annotation_target

import 'package:json_annotation/json_annotation.dart';
import 'package:model/model.dart';

part 'movie_search.g.dart';

@JsonSerializable(explicitToJson: true)
class MoviSearch {
  MoviSearch({
    required this.page,
    required this.results,
    @JsonKey(name: 'total_pages') required this.totalPages,
    @JsonKey(name: 'total_results') required this.totalResults,
  });
  factory MoviSearch.fromJson(Map<String, dynamic> json) =>
      _$MoviSearchFromJson(json);

  int page;
  List<SearchVideoDetails> results;
  int totalPages;
  int totalResults;
  Map<String, dynamic> toJson() => _$MoviSearchToJson(this);
}
