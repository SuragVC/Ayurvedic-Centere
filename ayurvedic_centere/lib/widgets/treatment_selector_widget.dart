import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:ayurvedic_centere/widgets/count_seletor_widget.dart';
import 'package:ayurvedic_centere/widgets/custom_dropdown_with_label.dart';
import 'package:ayurvedic_centere/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TreatmentSelector extends StatefulWidget {
  @override
  _TreatmentSelectorState createState() => _TreatmentSelectorState();
}

class _TreatmentSelectorState extends State<TreatmentSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ConstantColors.white, borderRadius: BorderRadius.circular(15)),
      height: 500,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.cancel_rounded)),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: CustomDropDownWithLabel(
              values: ["Friendly"],
              label: "Select Treatment",
              hintText: 'Choose preffered treatment',
            ),
          ),
          Column(
            children: [
              Text(
                "Add Patients",
                style: ConstantTextStyle.heading3,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: "",
                      hintText: "Male",
                      onChanged: (value) {},
                    ),
                  ),
                  Expanded(
                    child: CountSelectorWidget(),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
