import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> values;

  const CustomDropDown({Key? key, required this.values}) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.values[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: ConstantColors.black),
        color: ConstantColors.backgroundColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButton<String>(
            value: _selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                _selectedValue = newValue;
              });
            },
            icon: const Icon(Icons.keyboard_arrow_down,
                color: ConstantColors.backgroundColor),
            items: widget.values.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(value),
                ),
              );
            }).toList(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.keyboard_arrow_down, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
