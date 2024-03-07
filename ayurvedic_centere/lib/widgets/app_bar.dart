import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: ConstantColors.black),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.notifications_none,
          color: ConstantColors.black,
        ),
        onPressed: () {},
      ),
    ],
  );
}
