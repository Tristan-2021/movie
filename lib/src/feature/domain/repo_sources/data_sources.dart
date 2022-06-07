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
    // try {
    //   var data = await httpClient
    //       .get(Uri.parse(ENV.baseUrl + ENV.token))
    //       .catchError((e) {
    //     return null;
    //   });

    //   var covnerdata = jsonDecode(data.body);
    //   var date = Movi.fromJson(covnerdata);
    //   return date.results;
    // } catch (e, t) {
    //   if (t is SocketException || t is TimeoutException) throw ErrorService();
    //   print(e);

    //   throw ErrorService();
    // }

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
    // ignore: unused_local_variable
    final url = Uri.https(ENV.url, '3/movie/$idpeli/credits',
        {'api_key': ENV.token, 'language': ENV.idioma});
    //   try {

    //   } catch (e) {
    //     throw ErrorService();
    //   }
    // }

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
    // ignore: unused_local_variable

    final url = Uri.https(ENV.url, '3/movie/$idpeli',
        {'api_key': ENV.token, 'language': ENV.idioma});

    var data = await httpClient.get(url).catchError((e) {
      return null;
    });
    if (data.statusCode == 200) {
      var videodetails = VideoDetails.fromJson(json.decode(data.body));
      return videodetails;
    } else {
      throw MoviException('error Server');
    }
  }
}


  // var data = await httpClient
  //       .get(Uri.parse(ENV.baseUrl + ENV.token))
  //       .catchError((e) {
  //     return null;
  //   });
  //   print(data.statusCode);

  //   if (data.statusCode == 200) {
  //     var covnerdata = jsonDecode(data.body);
  //     var date = Movi.fromJson(covnerdata);
  //     return date.results;
  //   } else {
  //     throw ErrorService();
  //   }