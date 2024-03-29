import 'package:ayurvedic_centere/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.onChanged,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ConstantTextStyle.heading3,
        ),
        const Gap(8),
        SizedBox(
          height: 55,
          child: TextField(
            onChanged: onChanged,
            obscureText: isPassword,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              fillColor: ConstantColors.backgroundColor,
              hintText: hintText,
              hintStyle: const TextStyle(color: ConstantColors.textColor),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14))),
            ),
          ),
        ),
      ],
    );
  }
}
