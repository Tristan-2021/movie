import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/model/movie.state.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';

import '../../fake/fake_movi.dart';
import '../../fake/fakevideo_details.dart';

class MockHttp extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  late ServiceMovi serviceSources;
  late MockHttp mockHttp;
  setUpAll(() {
    registerFallbackValue(FakeUri());
  });
  setUp(() {
    mockHttp = MockHttp();
    serviceSources = ServiceMovi(mockHttp);
  });
  group('Service get Movie ', () {
    test('statuscode 200', () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(200);

      when(() => response.body).thenReturn(fake);

      var parserd = Movi.fromJson(json.decode(response.body));
      await serviceSources.getMovie();

      expect(parserd.results, isA<List<Movies>>());
    });

    test('statuscode 404', () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(404);
      var s = serviceSources.getMovie();

      expect(s, throwsA(isA<MoviException>()));
    });
  });
  //todo:Get Movies!
  group('GetMovies1 ', () {
    test('statuscode TimeoutException', () async {
      //  final response = MockResponse();

      when(() => mockHttp.get(any()).timeout(const Duration(seconds: 10)))
          .thenThrow(TimeoutException('', const Duration(seconds: 10)));

      //  var parserd = Movi.fromJson(json.decode(response.body));
      var s = serviceSources.getMovies1();

      expect(s, throwsA(isA<TimeoutException>()));
    });

    test('statuscode 404 getmovies1', () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(404);

      //when(() => response.body).thenReturn(fake);

      //  var parserd = Movi.fromJson(json.decode(response.body));
      var s = serviceSources.getMovies1();

      expect(s, throwsA(isA<MoviException>()));
    });
    test('statuscode 401 ', () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(404);

      when(() => response.body).thenReturn(fake);

      //  var parserd = Movi.fromJson(json.decode(response.body));
      var s = serviceSources.getMovies1();

      expect(s, throwsA(isA<MoviException>()));
    });

    test('statuscode 200 getMovies1 ', () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(200);

      when(() => response.body).thenReturn(fake);

      var parserd = Movi.fromJson(json.decode(response.body));
      await serviceSources.getMovies1();

      expect(parserd.results, isA<List<Movies>>());
    });
  });
  //todo:GetVideoDetails

  group('GetVideoDetails', () {
    test(
        'the call to getDetails with the id of the movie function is successful',
        () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(200);

      when(() => response.body).thenReturn(videoDetails);

      var parserd = VideoDetails.fromJson(json.decode(response.body));
      var videoDetailss = await serviceSources.getDetails('752623');

      expect(parserd.id, equals(videoDetailss.id));
    });

    test(
        'the call to getDetails with the id of the movie function is not successful return 404',
        () async {
      final response = MockResponse();

      when(() => mockHttp.get(any())).thenAnswer((_) async {
        return response;
      });
      when(() => response.statusCode).thenReturn(404);

      var videoDetailss = serviceSources.getDetails('752623');

      expect(videoDetailss, throwsA(isA<MoviException>()));
    });
  });
}
