import 'package:ayurvedic_centere/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isPrimary;

  const CustomPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: isPrimary
                  ? MaterialStateProperty.all(ConstantColors.primaryColor)
                  : MaterialStateProperty.all(ConstantColors.secondaryColor),
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
