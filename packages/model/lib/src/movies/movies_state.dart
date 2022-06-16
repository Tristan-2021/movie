// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target, public_member_api_docs, lines_longer_than_80_chars

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_state.g.dart';
part 'movies_state.freezed.dart';

@freezed
class Movies with _$Movies {
  @JsonSerializable(includeIfNull: true)
  const factory Movies({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    required int id,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
