class ProductModel {
  final String image;
  final String title;
  final String description;
  final double price;

  ProductModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
  static List<ProductModel> productsList = [
    ProductModel(
      image: 'assets/product/product01.png',
      title: 'October',
      description: 'reversible angora cardigan',
      price: 100,
    ),
    ProductModel(
      image: 'assets/product/product02.png',
      title: 'October',
      description: 'reversible angora cardigan',
      price: 200,
    ),
    ProductModel(
      image: 'assets/product/product03.png',
      title: 'October',
      description: 'reversible angora cardigan',
      price: 300,
    ),
    ProductModel(
      image: 'assets/product/product04.png',
      title: 'October',
      description: 'reversible angora cardigan',
      price: 400,
    ),
    ProductModel(
      image: 'assets/product/product05.png',
      title: 'October',
      description: 'reversible angora cardigan',
      price: 500,
    ),
    ProductModel(
      image: 'assets/product/product06.png',
      title: 'October',
      description: 'reversible angora cardigan',
      price: 600,
    ),
  ];
}
