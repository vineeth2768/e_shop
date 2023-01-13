import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;
  final bool isTopRated;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
    required this.isTopRated,
  });
  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
        isTopRated,
      ];

  static List<Product> products = [
    const Product(
      name: "Soft Drink #1",
      category: "Soft Drink",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU5lSaVp29jpkadq5e7tlvkFP6qr7C2SB0yA&usqp=CAU",
      price: 40,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "Soft Drink #2",
      category: "Soft Drink",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh9TREg869H6RcCIJX2VUJ1lsZEPsVLUEB2w&usqp=CAU",
      price: 30,
      isRecommended: false,
      isPopular: true,
      isTopRated: true,
    ),
    const Product(
      name: "Soft Drink #3",
      category: "Soft Drink",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThPcFctEyLwlslCPzsOzw1AaAhDt8077-bIA&usqp=CAU",
      price: 20,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),

    /////////////////// Smoothies ///////////////////////////////////
    const Product(
      name: "Smoothies #1",
      category: "Smoothies",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQydG0OcaSx-jsdi1uGTFtrbro-OCXkM76elw&usqp=CAU",
      price: 120,
      isRecommended: true,
      isPopular: false,
      isTopRated: true,
    ),
    const Product(
      name: "Smoothies #2",
      category: "Smoothies",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo0QsruV9Wjai0j1aFpsHsLiHhwtMIWzghUw&usqp=CAU",
      price: 110,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "Smoothies #3",
      category: "Smoothies",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW4KSa4kYIIYz9zKGm0BzO5LtgfUhs-ZbHUw&usqp=CAU",
      price: 90,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),

    //////////////////////////////// Sandwich //////////////////////////
    const Product(
      name: "SandWich #1",
      category: "SandWich",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtzA8cN54ATyqKU14PGOUaCAG40lxOSr7pkA&usqp=CAU",
      price: 220,
      isRecommended: true,
      isPopular: true,
      isTopRated: true,
    ),
    const Product(
      name: "SandWich #2",
      category: "SandWich",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PburFKShe8Y8hrjg4SxW3gmZHcjn9w6maL49pALol7DOCRWYd_nAjq4WzZMLSOxw9cw&usqp=CAU",
      price: 180,
      isRecommended: true,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "SandWich #3",
      category: "SandWich",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShg5guX8v9wdRFar9JmRQaWkA9oI-xTw9k-g&usqp=CAU",
      price: 150,
      isRecommended: true,
      isPopular: true,
      isTopRated: false,
    ),
  ];
}
