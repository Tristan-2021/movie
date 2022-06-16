// ignore_for_file: public_member_api_docs, sort_unnamed_constructors_first

import 'package:json_annotation/json_annotation.dart';
part 'gnro_state.g.dart';

@JsonSerializable()
class Genre {
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Genre({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
