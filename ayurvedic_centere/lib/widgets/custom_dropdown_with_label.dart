import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomDropDownWithLabel extends StatefulWidget {
  final List<String> values;
  final String label;
  final String hintText;

  const CustomDropDownWithLabel({
    super.key,
    required this.values,
    required this.label,
    required this.hintText,
  });

  @override
  State createState() => _CustomDropDownWithLabelState();
}

class _CustomDropDownWithLabelState extends State<CustomDropDownWithLabel> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: ConstantTextStyle.heading3,
        ),
        const SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value: _selectedValue ?? null,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                icon: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.keyboard_arrow_down,
                      color: ConstantColors.secondaryColor),
                ),
                items:
                    widget.values.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(value),
                    ),
                  );
                }).toList(),
                hint: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 20),
                  child: Text(widget.hintText),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
