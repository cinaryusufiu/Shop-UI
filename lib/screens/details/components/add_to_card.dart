import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/models/product.dart';

import '../../../constants.dart';


class AddToCard extends StatelessWidget {
  const AddToCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color!),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                  'assets/icons/add_to_cart.svg', color: product.color!,),
              onPressed: () {},
            ),
          ),
         
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(product.color!), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)))),
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
