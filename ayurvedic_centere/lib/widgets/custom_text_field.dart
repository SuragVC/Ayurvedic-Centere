import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextField({
    Key? key,
    required this.onChanged,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        Gap(8),
        TextField(
          onChanged: onChanged,
          obscureText: isPassword,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
