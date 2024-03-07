import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search for treatments",
        prefixIcon: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.search),
        ),
        filled: true,
        fillColor: ConstantColors.backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
            vertical: 15.0), // Adjust vertical padding
      ),
    );
  }
}
