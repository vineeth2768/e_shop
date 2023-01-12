import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/widgets/hero_carousel_widget.dart';
import 'package:flutter/material.dart';

import 'package:e_shop/models/category_model.dart';
import 'package:e_shop/widgets/custom_appbar_widget.dart';
import 'package:e_shop/widgets/custom_navi_widget.dart';

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
      body: CarouselSlider(
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
    );
  }
}
