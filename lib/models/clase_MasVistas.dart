class ModeloMasVistas {
  ModeloMasVistas({this.title, this.image});

  factory ModeloMasVistas.fromJson(Map<String, dynamic> json) {
    final String original_title = json['original_title'];
    final String poster_path = json['poster_path'] ?? '';

    return ModeloMasVistas(title: original_title, image: poster_path);
  }
  final String title;
  final String image;
}
