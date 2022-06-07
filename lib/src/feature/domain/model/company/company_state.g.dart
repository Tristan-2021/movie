// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) =>
    ProductionCompany(
      id: json['id'] as int,
      logoPath: json['logoPath'] as String,
      name: json['name'] as String,
      originCountry: json['originCountry'] as String,
    );

Map<String, dynamic> _$ProductionCompanyToJson(ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };
