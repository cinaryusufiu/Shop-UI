import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Aristocratic Hand Bag',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          product.title ?? '',
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: kDefaultPadding),
        Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(text: 'Price \n'),
                TextSpan(
                  text: '\$${product.price}',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ]),
            ),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: Hero(
                tag: '${product.id}',
                child: Image.asset(
                  product.image ?? '',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
