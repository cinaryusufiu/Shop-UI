import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'components/detail_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white,),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(icon: SvgPicture.asset('assets/icons/search.svg') ,onPressed: () { },),
        IconButton(icon: SvgPicture.asset('assets/icons/cart.svg') ,onPressed: () { },),
        const SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}
