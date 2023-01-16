import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/consts/colors.dart';
import 'package:e_shop/widgets/hero_carousel_widget.dart';
import 'package:flutter/material.dart';

import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/widgets/custom_appbar_widget.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';
  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: product),
    );
  }

  final Product product;
  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(title: product.name),
        bottomNavigationBar: BottomAppBar(
          color: baseColor,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                MaterialButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: const Text(
                    "ADD TO CART",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.4,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                initialPage: 2,
                autoPlay: true,
              ),
              items: [
                HeroCarouselCard(
                  product: product,
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: baseColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "£ ${product.price}",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text(
                  "Product Information",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text(
                      "With India's favorite brands like Lay's, Pepsi, Quaker, Tropicana & Gatorade in its 22-brand portfolio, PepsiCo is one of India's largest food & beverage ...",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text(
                  "Delivery Information",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text(
                      "dgfhk",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
