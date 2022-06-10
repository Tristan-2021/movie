// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';

part 'movie.state.g.dart';

@JsonSerializable(explicitToJson: true)
class Movi {
  Movi({
    required this.page,
    required this.results,
    @JsonKey(name: 'total_pages') required this.totalPages,
    @JsonKey(name: 'total_results') required this.totalResults,
  });

  int page;
  List<Movies> results;
  int totalPages;
  int totalResults;

  factory Movi.fromJson(Map<String, dynamic> json) => _$MoviFromJson(json);
  Map<String, dynamic> toJson() => _$MoviToJson(this);
}

@JsonSerializable()
class OriginalLanguage {
  final String originalLanguageValues;
  const OriginalLanguage({required this.originalLanguageValues});

  factory OriginalLanguage.fromJson(Map<String, dynamic> json) =>
      _$OriginalLanguageFromJson(json);
  Map<String, dynamic> toJson() => _$OriginalLanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MoviSearch {
  MoviSearch({
    required this.page,
    required this.results,
    @JsonKey(name: 'total_pages') required this.totalPages,
    @JsonKey(name: 'total_results') required this.totalResults,
  });

  int page;
  List<SearchVideoDetails> results;
  int totalPages;
  int totalResults;

  factory MoviSearch.fromJson(Map<String, dynamic> json) =>
      _$MoviSearchFromJson(json);
  Map<String, dynamic> toJson() => _$MoviSearchToJson(this);
}
