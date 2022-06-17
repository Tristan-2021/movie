// ignore_for_file: public_member_api_docs, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movi_details_search_state.g.dart';
part 'movi_details_search_state.freezed.dart';

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
