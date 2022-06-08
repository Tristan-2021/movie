import 'package:movi/src/feature/domain/model/movies_state.dart';

var moviesfake = Movies(
    adult: true,
    voteCount: 1,
    voteAverage: 21,
    video: true,
    title: 'titulo',
    releaseDate: DateTime.now(),
    posterPath: 'asas',
    popularity: 1,
    overview: 'asas',
    originalTitle: 'asas',
    id: 12,
    genreIds: [],
    backdropPath: '');

List<Movies> movies = [
  moviesfake,
];
