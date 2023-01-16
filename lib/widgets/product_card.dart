import 'package:e_shop/consts/colors.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.pushNamed(context, '/product', arguments: product);
      }),
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 120,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.fill,
              )),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 3,
            color: baseColor,
            child: Column(children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Text(
                "£ ${product.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
