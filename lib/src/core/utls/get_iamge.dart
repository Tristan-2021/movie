import 'package:model/model.dart';

String getPosterImg(String? profielPath) {
  if (profielPath != null) {
    return 'https://image.tmdb.org/t/p/original$profielPath';
  } else {
    return 'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg';
  }
}

String getcompany(List<ProductionCompany> companys) {
  if (companys.isNotEmpty) {
    return companys[0].name;
  } else {
    return company[0].name;
  }
}
