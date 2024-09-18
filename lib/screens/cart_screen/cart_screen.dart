import 'package:clothing_store/utils/pakages_path.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
          child: Center(child: SvgPicture.asset("assets/images/item3.svg"))),
    );
  }
}
