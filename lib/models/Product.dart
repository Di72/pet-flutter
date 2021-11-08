class Product {
  final int id;
  final List<String> images;
  final double price;

  Product({
    required this.id,
    required this.images,
    required this.price,
  });
}

List<Product> demoProducts = [
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    price: 36.55,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    price: 20.20,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    price: 50.5,
  ),
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
    ],
    price: 64.99,
  ),
];
