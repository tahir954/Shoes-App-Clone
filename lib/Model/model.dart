class Product {
  final String imagePath;
  final String name;
  final double price;

  const Product({
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  String toString() {
    return 'Product{imageUrl: $imagePath, name: $name, price: $price}';
  }
}

List<Product> productsList = [
  const Product(
    name: 'Ultra Boosts',
    price: 179.99,
    imagePath: 'assets/images/Shoes/adidas_shoe.png',
  ),
  const Product(
    name: 'Gel-kayano 29',
    price: 159.99,
    imagePath: 'assets/images/Shoes/asics_shoe.png',
  ),
  const Product(
    name: 'Chuck Taylor',
    price: 59.99,
    imagePath: 'assets/images/Shoes/converse_shoe.png',
  ),
  const Product(
    name: '574',
    price: 109.99,
    imagePath: 'assets/images/Shoes/new_balance_shoe.png',
  ),
  const Product(
    name: 'Future Rider',
    price: 99.99,
    imagePath: 'assets/images/Shoes/puma_shoe.png',
  ),
  const Product(
    name: 'Air Max 1',
    price: 119.99,
    imagePath: 'assets/images/Shoes/nike_shoe1.png',
  ),
  const Product(
    name: 'Air Max',
    price: 119.99,
    imagePath: 'assets/images/Shoes/nike_shoe.png',
  ),
  const Product(
    name: 'Classic Leather',
    price: 58.49,
    imagePath: 'assets/images/Shoes/reebok_shoe.png',
  ),
  const Product(
    name: 'HOVR Phantom',
    price: 129.99,
    imagePath: 'assets/images/Shoes/under_armour_shoe.png',
  ),
  const Product(
    name: 'Speedcross 5',
    price: 129.99,
    imagePath: 'assets/images/Shoes/salomon_shoe.png',
  ),
  const Product(
    name: 'Old School Pro',
    price: 79.99,
    imagePath: 'assets/images/Shoes/vans_shoe.png',
  ),
];
