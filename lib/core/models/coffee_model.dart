class CoffeeModel {
  final String image;
  final String type;
  final String component;
  final double price;
  final double rate;
  final int numberOfReviewers;
  final String description;
  CoffeeModel(
      {required this.description,
      required this.image,
      required this.type,
      required this.component,
      required this.price,
      required this.rate,
      required this.numberOfReviewers});
}
