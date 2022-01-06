
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: (product.color ?? Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(tag: '${product.id}', child: Image.asset(product.image!)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title.toString(),
              style: TextStyle(color: kTextLightColor),
            ),
          ),
           Text(
            "\$${product.price ?? 0.0}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
