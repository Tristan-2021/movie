// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages, public_member_api_docs, lines_longer_than_80_chars

import 'package:freezed_annotation/freezed_annotation.dart';

part 'casts_state.g.dart';
part 'casts_state.freezed.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    required bool adult,
    required int gender,
    required int id,
    @JsonKey(name: 'known_for_department') required String knownForDepartment,
    required String name,
    @JsonKey(name: 'original_name') required String originalName,
    required double popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
    @JsonKey(name: 'cast_id') required int castId,
    required String character,
    @JsonKey(name: 'credit_id') required String creditId,
    required int order,
    String? department,
    String? job,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
