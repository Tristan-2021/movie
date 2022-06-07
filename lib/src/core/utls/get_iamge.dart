String getPosterImg(String? profielPath) {
  if (profielPath != null) {
    return 'https://image.tmdb.org/t/p/original$profielPath';
  } else {
    return 'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg';
  }
}

String getGnro(List<dynamic>? list) {
  String name = '';
  if (list != null) {
    for (var element in list) {
      Map<String, dynamic> genro0 = list[1];

      name = genro0["name"];
    }
    return name;
  } else {
    return 'no unkown';
  }
  // [{id: 28, name: Acción}, {id: 12, name: Aventura}, {id: 35, name: Comedia}],
}

String getCompany(List<dynamic>? list) {
  String name = '';
  if (list != null) {
    for (var element in list) {
      Map<String, dynamic> genro0 = list[0];

      name = genro0["name"];
      // vacia.add(list );
    }
    return name;
  } else {
    return 'no unkown';
  }
  // [{id: 28, name: Acción}, {id: 12, name: Aventura}, {id: 35, name: Comedia}],
}
