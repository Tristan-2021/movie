// ignore_for_file: depend_on_referenced_packages, unnecessary_import, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:movi/src/feature/domain/model/company/company_state.dart';
import 'package:movi/src/feature/domain/model/gnro/gnro_state.dart';
part 'movi_details_state.g.dart';
part 'movi_details_state.freezed.dart';

@freezed
class VideoDetails with _$VideoDetails {
  @JsonSerializable(explicitToJson: true)
  const factory VideoDetails({
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'belongs_to_collection')
        required dynamic belongsToCollection,
    required int budget,
    required List<Genre> genres,
    required String homepage,
    required int id,
    @JsonKey(name: 'imdb_id') required String imdbId,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'production_companies')
        List<ProductionCompany>? productionCompanies,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    required int revenue,
    required int runtime,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _VideoDetails;

  factory VideoDetails.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailsFromJson(json);
}

@freezed
class SearchVideoDetails with _$SearchVideoDetails {
  @JsonSerializable(explicitToJson: true)
  const factory SearchVideoDetails({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _SearchVideoDetails;

  factory SearchVideoDetails.fromJson(Map<String, dynamic> json) =>
      _$SearchVideoDetailsFromJson(json);
}
