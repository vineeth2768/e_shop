import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: "Soft drinks",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEGCgX6W1DzY9Ji45MLfmMtj2pV9DHl9KyjIucGgtRSKl9eIpGHUwWHWl59MQzzUCTLjU&usqp=CAU",
    ),
    const Category(
      name: "Smoothies",
      imageUrl:
          "https://www.eatthis.com/wp-content/uploads/sites/4/2022/03/smoothies.jpg?quality=82&strip=1",
    ),
    const Category(
      name: "Sandwich",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyiuKpJQEoB2NGluHiJSIrGs8-_LdbDU-T-A&usqp=CAU",
    ),
  ];
}
