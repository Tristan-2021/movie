// ignore_for_file: unnecessary_string_interpolations, avoid_print, invalid_return_type_for_catch_error

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:model/model.dart';
import 'package:movi/src/core/env/en.dart';
import 'package:movi/src/core/exceptions/exception.dart';

class ServiceMovi {
  final Client httpClient;
  ServiceMovi(this.httpClient);
  int indexmovi = 0;
  Future<List<Movies>> getMovie() async {
    indexmovi++;

    Uri.https(ENV.url, '3/movie/now_playing/', {
      'api_key': ENV.token,
      'language': ENV.idioma,
      'page': indexmovi.toString()
    });

    print('que valor este numero $indexmovi ');

    var data = await httpClient.get(Uri.parse(ENV.baseUrl + ENV.token));

    if (indexrare == 4) {
      indexrare = 0;
    }
    if (data.statusCode == 200) {
      var covnerdata = jsonDecode(data.body);

      var date = Movi.fromJson(covnerdata);
      return date.results;
    } else {
      throw const MoviException('error Server');
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
      throw const MoviException('error Server');
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
      throw const MoviException('error Server');
    }
  }

  int indexrare = 1;
  Future<List<Movies>> getToprate() async {
    indexrare++;
    final url = Uri.https(ENV.url, '3/movie/top_rated', {
      'api_key': ENV.token,
      'language': ENV.idioma,
      'page': indexrare.toString()
    });
    if (indexrare == 4) {
      indexrare = 0;
    }

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    if (data.statusCode == 200) {
      var movi = Movi.fromJson(json.decode(data.body));
      return movi.results;
    } else {
      throw const MoviException('error Server');
    }
  }

  Future<List<SearchVideoDetails>> getSearch(String search) async {
    final url = Uri.https(ENV.url, '3/search/movie/',
        {'api_key': ENV.token, 'language': ENV.idioma, 'query': search});

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    if (data.statusCode == 200) {
      var movi = MoviSearch.fromJson(json.decode(data.body));
      print(movi.results);
      return movi.results;
    } else {
      throw const MoviException('Sorry..! we can t find your movie');
    }
  }

  Future<List<Movies>> getMovies1() async {
    indexmovi++;
    var url = Uri.https(ENV.url, '3/movie/now_playing/', {
      'api_key': ENV.token,
      'language': ENV.idioma,
      'page': indexmovi.toString()
    });
    var data = await httpClient.get(url).timeout(const Duration(seconds: 15));
    switch (data.statusCode) {
      case 422:
        throw const MoviException('Ups..! página no està disponible');
      case 404:
        throw const MoviException('Pagina No Encontrada');
      case 401:
        throw const MoviException('No Authorizado');

      case 200:
        var covnerdata = jsonDecode(data.body);

        var date = Movi.fromJson(covnerdata);

        return date.results;

      default:
        throw const MoviException('Error inesperado');
    }
  }
}
