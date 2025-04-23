class CategoryModel {
  final String categoryName;

  final int numberOfProducts;
  final List<String> imageUrls;

  CategoryModel({
    required this.categoryName,

    required this.numberOfProducts,
    required this.imageUrls,
  }) : assert(imageUrls.length == 4);
}
