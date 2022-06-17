// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target, public_member_api_docs, sort_unnamed_constructors_first, lines_longer_than_80_chars, directives_ordering
import 'package:json_annotation/json_annotation.dart';
import 'package:model/src/movies/movies_state.dart';

part 'movie.state.g.dart';

@JsonSerializable(explicitToJson: true)
class Movi {
  factory Movi.fromJson(Map<String, dynamic> json) => _$MoviFromJson(json);
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
  Map<String, dynamic> toJson() => _$MoviToJson(this);
}

@JsonSerializable()
class OriginalLanguage {
  factory OriginalLanguage.fromJson(Map<String, dynamic> json) =>
      _$OriginalLanguageFromJson(json);
  const OriginalLanguage({required this.originalLanguageValues});
  final String originalLanguageValues;
  Map<String, dynamic> toJson() => _$OriginalLanguageToJson(this);
}
