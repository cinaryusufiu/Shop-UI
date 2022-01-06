import 'package:flutter/material.dart';
import '../../../constants.dart';


class Description extends StatelessWidget {
  final String description;
  const Description({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
