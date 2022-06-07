// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_state.g.dart';
part 'movies_state.freezed.dart';

@freezed
class Movies with _$Movies {
  @JsonSerializable(includeIfNull: true)
  const factory Movies({
    required bool adult,
    required String backdropPath,
    required List<int> genreIds,
    required int id,
    //required OriginalLanguage originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required DateTime releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
