import 'package:e_shop/widgets/custom_appbar_widget.dart';
import 'package:e_shop/widgets/custom_navi_widget.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = '/user';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const UserScreen(),
    );
  }

  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(title: 'User'),
      bottomNavigationBar: CustomNavigationWidget(),
    );
  }
}
