
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/screens/details/components/card_counter.dart';


class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardCounter(),
         Container(
          width: 32,
          height: 32,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color:  Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg' ,),
        )
      ],
    );
  }
}
