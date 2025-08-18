class FruitModel {
  final String name;
  final String image;
  final double rating;
  final int numberOfVotes;
  final double price;

  FruitModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.numberOfVotes,
    required this.price,
  });
  FruitModel.withoudRating({
    required this.name,
    required this.image,
    this.rating = 4.5,
    this.numberOfVotes = 500,
    required this.price,
  });
}
