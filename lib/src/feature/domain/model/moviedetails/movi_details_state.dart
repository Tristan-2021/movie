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
    required String backdropPath,
    required dynamic belongsToCollection,
    required int budget,
    required List<Genre> genres,
    required String homepage,
    required int id,
    required String imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required List<ProductionCompany> productionCompanies,
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
