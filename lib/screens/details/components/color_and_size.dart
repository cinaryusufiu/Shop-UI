import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/components/color_dot.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;

  const ColorAndSize({ Key? key , required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: const [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF86C95)),
                  ColorDot(color: Color(0xFFA26C95)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
            style: TextStyle(color: kTextColor),
            children: [
              TextSpan(text: 'Size\n'),
              TextSpan(
                text: '${product.size} cm',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
