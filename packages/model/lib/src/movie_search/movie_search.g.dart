//part of 'movie.state.dart';
part of 'movie_search.dart';

MoviSearch _$MoviSearchFromJson(Map<String, dynamic> json) => MoviSearch(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => SearchVideoDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$MoviSearchToJson(MoviSearch instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
