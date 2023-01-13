import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/widgets/product_carousel.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/models/models.dart';
import 'package:e_shop/widgets/custom_appbar_widget.dart';
import 'package:e_shop/widgets/custom_navi_widget.dart';
import 'package:e_shop/widgets/hero_carousel_widget.dart';

import 'package:e_shop/widgets/section_headline.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(title: "Farisha's Kitchen"),
        bottomNavigationBar: const CustomNavigationWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
              const SectionHeadLine(
                title: "RECOMMENDED",
              ),
              const SizedBox(height: 5.0),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isRecommended)
                      .toList()),
              const SectionHeadLine(
                title: "MOST POPULAR",
              ),
              const SizedBox(height: 5.0),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isPopular)
                      .toList()),
              const SectionHeadLine(
                title: "TOP PRODUCTS",
              ),
              const SizedBox(height: 5.0),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isTopRated)
                      .toList()),
            ],
          ),
        ));
  }
}
