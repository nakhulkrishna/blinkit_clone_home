class ProductModel {
  final String name;
  final String power;
  final String jars;
  final double rating;
  final String deliveryTime;
  final String discount;
  final double price;
  final double originalPrice;
  final String imageUrl;

  ProductModel({
    required this.imageUrl,
    required this.name,
    required this.power,
    required this.jars,
    required this.rating,
    required this.deliveryTime,
    required this.discount,
    required this.price,
    required this.originalPrice,
  });
}
