// ignore_for_file: depend_on_referenced_packages, public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars

import 'package:json_annotation/json_annotation.dart';
import 'package:model/src/cast/casts_state.dart';

part 'actors_state.g.dart';

@JsonSerializable(explicitToJson: true)
class Actor {
  Actor({
    required this.id,
    required this.cast,
  });

  final int id;
  final List<Cast> cast;
  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
  Map<String, dynamic> toJson() => _$ActorToJson(this);
}
