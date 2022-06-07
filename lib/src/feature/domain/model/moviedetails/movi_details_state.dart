// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movi_details_state.g.dart';
part 'movi_details_state.freezed.dart';

@freezed
class VideoDetails with _$VideoDetails {
  @JsonSerializable(explicitToJson: true)
  const factory VideoDetails({
    required bool adult,
    required String backdropPath,
    required dynamic belongsToCollection,
    required int budget,
    required List genres,
    required String homepage,
    required int id,
    required String imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required List productionCompanies,
    required DateTime releaseDate,
    required int revenue,
    required int runtime,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _VideoDetails;

  factory VideoDetails.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailsFromJson(json);
}
