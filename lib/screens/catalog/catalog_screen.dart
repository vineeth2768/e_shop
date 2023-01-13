import 'package:e_shop/models/models.dart';
import 'package:e_shop/widgets/custom_appbar_widget.dart';
import 'package:e_shop/widgets/custom_navi_widget.dart';
import 'package:e_shop/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CataLogScreen extends StatelessWidget {
  static const String routeName = '/cataLog';
  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CataLogScreen(category: category),
    );
  }

  final Category category;

  const CataLogScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
        appBar: CustomAppBarWidget(title: category.name),
        bottomNavigationBar: const CustomNavigationWidget(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: categoryProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  product: categoryProducts[index],
                );
              }),
        ));
  }
}
