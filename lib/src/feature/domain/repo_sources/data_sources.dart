// ignore_for_file: unnecessary_string_interpolations, avoid_print, invalid_return_type_for_catch_error

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:movi/src/core/env/en.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/model/actors_state.dart';
import 'package:movi/src/feature/domain/model/casts_state.dart';
import 'package:movi/src/feature/domain/model/movie.state.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';

class ServiceMovi {
  final Client httpClient;
  const ServiceMovi(this.httpClient);
  Future<List<Movies>> getMovie() async {
    Uri.https(ENV.url, '3/movie/now_playing/',
        {'api_key': ENV.token, 'language': ENV.idioma});
    var data = await httpClient
        .get(Uri.parse(ENV.baseUrl + ENV.token))
        .catchError((e) {
      return null;
    });

    if (data.statusCode == 200) {
      var covnerdata = jsonDecode(data.body);
      print(data.statusCode);

      var date = Movi.fromJson(covnerdata);
      return date.results;
    } else {
      throw MoviException('error Server');
    }
  }

  Future<List<Cast>> getActor(String idpeli) async {
    final url = Uri.https(ENV.url, '3/movie/$idpeli/credits',
        {'api_key': ENV.token, 'language': ENV.idioma});

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    if (data.statusCode == 200) {
      var actors = Actor.fromJson(json.decode(data.body));
      return actors.cast;
    } else {
      throw MoviException('error Server');
    }
  }

  Future<VideoDetails> getDetails(String idpeli) async {
    final url = Uri.https(ENV.url, '3/movie/$idpeli',
        {'api_key': ENV.token, 'language': ENV.idioma});

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    print(idpeli);
    if (data.statusCode == 200) {
      var videodetails = VideoDetails.fromJson(json.decode(data.body));
      return videodetails;
    } else {
      throw MoviException('error Server');
    }
  }

  Future<List<Movies>> getPopualr() async {
    final url = Uri.https(ENV.url, '3/movie/top_rated',
        {'api_key': ENV.token, 'language': ENV.idioma});

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    if (data.statusCode == 200) {
      var movi = Movi.fromJson(json.decode(data.body));
      return movi.results;
    } else {
      throw MoviException('error Server');
    }
  }

  Future<List<Movies>> getSearch(String search) async {
    final url = Uri.https(ENV.url, '3/$search/movie/',
        {'api_key': ENV.token, 'language': ENV.idioma});

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    print(data.body);
    if (data.statusCode == 200) {
      var movi = Movi.fromJson(json.decode(data.body));
      return movi.results;
    } else {
      throw MoviException('Sorry..! we can t find your movie');
    }
  }
}
