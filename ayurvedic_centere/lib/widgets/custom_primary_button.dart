import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ConstantColors.primaryColor),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 12)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                color: ConstantColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
