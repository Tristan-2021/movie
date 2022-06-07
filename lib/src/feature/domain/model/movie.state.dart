// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';

part 'movie.state.g.dart';

@JsonSerializable(explicitToJson: true)
class Movi {
  Movi({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
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
