// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'company_state.g.dart';

@JsonSerializable()
class ProductionCompany {
  const ProductionCompany({
    required this.id,
    this.logoPath,
    required this.name,
    required this.originCountry,
  });
  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);

  final int id;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  final String name;
  @JsonKey(name: 'origin_country')
  final String originCountry;
  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);
}

const company = [
  ProductionCompany(
    id: 1,
    name: 'unknown',
    originCountry: 'es',
  )
];
