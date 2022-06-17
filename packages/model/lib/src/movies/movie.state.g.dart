// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movi _$MoviFromJson(Map<String, dynamic> json) => Movi(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Movies.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$MoviToJson(Movi instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

OriginalLanguage _$OriginalLanguageFromJson(Map<String, dynamic> json) =>
    OriginalLanguage(
      originalLanguageValues: json['original_languageValues'] as String,
    );

Map<String, dynamic> _$OriginalLanguageToJson(OriginalLanguage instance) =>
    <String, dynamic>{
      'original_languageValues': instance.originalLanguageValues,
    };
