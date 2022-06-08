String getPosterImg(String? profielPath) {
  if (profielPath != null) {
    return 'https://image.tmdb.org/t/p/original$profielPath';
  } else {
    return 'https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg';
  }
}
