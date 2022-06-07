// // To parse this JSON data, do
// //
// //     final movi = moviFromMap(jsonString);

// import 'dart:convert';

// class Movi {
//   Movi({
//     required this.images,
//     required this.changeKeys,
//   });

//   Images images;
//   List<String> changeKeys;

//   factory Movi.fromJson(String str) => Movi.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Movi.fromMap(Map<String, dynamic> json) => Movi(
//         images: Images.fromMap(json["images"]),
//         changeKeys: List<String>.from(json["change_keys"].map((x) => x)),
//       );

//   Map<String, dynamic> toMap() => {
//         "images": images.toMap(),
//         "change_keys": List<dynamic>.from(changeKeys.map((x) => x)),
//       };
// }

// class Images {
//   Images({
//     required this.baseUrl,
//     required this.secureBaseUrl,
//     required this.backdropSizes,
//     required this.logoSizes,
//     required this.posterSizes,
//     required this.profileSizes,
//     required this.stillSizes,
//   });

//   String baseUrl;
//   String secureBaseUrl;
//   List<String> backdropSizes;
//   List<String> logoSizes;
//   List<String> posterSizes;
//   List<String> profileSizes;
//   List<String> stillSizes;

//   factory Images.fromJson(String str) => Images.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Images.fromMap(Map<String, dynamic> json) => Images(
//         baseUrl: json["base_url"],
//         secureBaseUrl: json["secure_base_url"],
//         backdropSizes: List<String>.from(json["backdrop_sizes"].map((x) => x)),
//         logoSizes: List<String>.from(json["logo_sizes"].map((x) => x)),
//         posterSizes: List<String>.from(json["poster_sizes"].map((x) => x)),
//         profileSizes: List<String>.from(json["profile_sizes"].map((x) => x)),
//         stillSizes: List<String>.from(json["still_sizes"].map((x) => x)),
//       );

//   Map<String, dynamic> toMap() => {
//         "base_url": baseUrl,
//         "secure_base_url": secureBaseUrl,
//         "backdrop_sizes": List<dynamic>.from(backdropSizes.map((x) => x)),
//         "logo_sizes": List<dynamic>.from(logoSizes.map((x) => x)),
//         "poster_sizes": List<dynamic>.from(posterSizes.map((x) => x)),
//         "profile_sizes": List<dynamic>.from(profileSizes.map((x) => x)),
//         "still_sizes": List<dynamic>.from(stillSizes.map((x) => x)),
//       };
// }
