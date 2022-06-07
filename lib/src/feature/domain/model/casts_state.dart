// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'casts_state.g.dart';
part 'casts_state.freezed.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    required bool adult,
    required int gender,
    required int id,
    required String knownForDepartment,
    required String name,
    required String originalName,
    required double popularity,
    String? profilePath,
    required int castId,
    required String character,
    required String creditId,
    required int order,
    String? department,
    String? job,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
