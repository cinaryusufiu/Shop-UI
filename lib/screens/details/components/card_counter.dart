import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);

  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItems = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(Icons.remove, () { 
          if(numOfItems > 1){
            setState(() {
              numOfItems --;
            });
          }
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2,'0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ), 
         buildOutlinedButton(Icons.add, () { 
           setState(() {
             numOfItems ++;
           });
         }),
      ],
    );
  }

  Widget buildOutlinedButton(IconData iconData , VoidCallback press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        child:  Icon(iconData , color: Colors.black,),
      ),
    );
  }
}
