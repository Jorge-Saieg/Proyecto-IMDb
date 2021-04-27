class Pelicula {
  Pelicula({this.title, this.image, this.description});

  factory Pelicula.fromJson(Map<String, dynamic> json) {
    final String original_title = json['original_title'];
    final String poster_path = json['poster_path'] ?? '';
    final String overview = json['overview'];

    return Pelicula(
        title: original_title, image: poster_path, description: overview);
  }
  final String title;
  final String image;
  final String description;
}
