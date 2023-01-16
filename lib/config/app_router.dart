import 'dart:developer';

import 'package:e_shop/models/category_model.dart';
import 'package:e_shop/models/models.dart';
import 'package:e_shop/screens/cart/cart_screen.dart';
import 'package:e_shop/screens/catalog/catalog_screen.dart';
import 'package:e_shop/screens/home/home_screen.dart';
import 'package:e_shop/screens/product/product_screen.dart';
import 'package:e_shop/screens/user/user_screen.dart';
import 'package:e_shop/screens/wishlist.dart/wishlist.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log("This is Route :${settings.name}");

    switch (settings.name) {
      case '/start':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case '/user':
        return UserScreen.route();
      case '/wishlist':
        return WishListScreen.route();
      case '/cataLog':
        return CataLogScreen.route(category: settings.arguments as Category);
      case '/product':
        return ProductScreen.route(product: settings.arguments as Product);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => const Scaffold(
              body: Center(
                child: Text("Error Occur 404"),
              ),
            ));
  }
}
