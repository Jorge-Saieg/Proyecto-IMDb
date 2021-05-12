class Pelicula {
  Pelicula({
    this.original_title,
    this.image,
    this.backdrop_path,
    this.description,
    this.vote_average,
  });

  factory Pelicula.fromJson(Map<String, dynamic> json) {
    final String original_title = json['original_title'];
    final String poster_path = json['poster_path'] ?? '';
    final String backdrop_path = json['backdrop_path'] ?? '';
    final String overview = json['overview'];
    final double vote_average = json['vote_average'];

    return Pelicula(
        original_title: original_title,
        image: poster_path,
        description: overview,
        vote_average: vote_average,
        backdrop_path: backdrop_path);
  }
  final String original_title;
  final String image;
  final String description;
  final double vote_average;
  final String backdrop_path;
}
