class Pelicula {
  Pelicula({
    this.originalTitle,
    this.posterPath,
    this.backdropPath,
    this.description,
    this.voteAverage,
    this.releaseDate,
    this.id,
  });

  factory Pelicula.fromJson(Map<String, dynamic> json) {
    final String originalTitle = json['original_title'];
    final String posterPath = json['poster_path'] ?? '';
    final String backdropPath = json['backdrop_path'] ?? '';
    final String overview = json['overview'];
    final double voteAverage = json['vote_average'] * 1.0;
    final DateTime releaseDate = DateTime.parse(json['release_date'] ?? '');
    final String id = json['id'].toString() ?? '';

    return Pelicula(
      originalTitle: originalTitle,
      posterPath: posterPath,
      description: overview,
      voteAverage: voteAverage,
      backdropPath: backdropPath,
      releaseDate: releaseDate,
      id: id,
    );
  }
  final String originalTitle;
  final String posterPath;
  final String description;
  final double voteAverage;
  final String backdropPath;
  final DateTime releaseDate;
  final String id;
}
