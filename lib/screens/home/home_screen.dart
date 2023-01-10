import 'package:e_shop/widgets/custom_appbar_widget.dart';
import 'package:e_shop/widgets/custom_navi_widget.dart';
import 'package:flutter/material.dart';

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
    return const Scaffold(
      appBar: CustomAppBarWidget(title: "E-SHOP"),
      bottomNavigationBar: CustomNavigationWidget(),
    );
  }
}
