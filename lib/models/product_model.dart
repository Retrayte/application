
class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static const List<Product> products = [
  Product(
    name: 'Burger',
    price: 3.49,
    imageUrl: 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg',
    ),
  Product(
    name: 'Spaghetti Bolognese',
    price: 9.99,
    imageUrl: 'https://images.ctfassets.net/uexfe9h31g3m/6QtnhruEFi8qgEyYAICkyS/baae41c24d12e557bcc35c556049f43b/Spaghetti_Bolognese_Lifestyle_Full_Bleed_Recipe_Image__1__copy.jpg?w=2000&h=1500&fm=jpg&fit=thumb&q=90&fl=progressive',
    ),
  Product(
    name: 'Steak',
    price: 15.9,
    imageUrl: 'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_4:3/k%2Farchive%2F2816f86937ebc7019a513d858cec8e0c55d38890',
    ),
];
}
