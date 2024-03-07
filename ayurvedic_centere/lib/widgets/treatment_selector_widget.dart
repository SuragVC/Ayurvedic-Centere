import 'package:ayurvedic_centere/constants/constants.dart';
import 'package:ayurvedic_centere/widgets/count_seletor_widget.dart';
import 'package:ayurvedic_centere/widgets/custom_dropdown_with_label.dart';
import 'package:ayurvedic_centere/widgets/custom_primary_button.dart';
import 'package:ayurvedic_centere/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TreatmentSelector extends StatefulWidget {
  const TreatmentSelector({super.key});

  @override
  State createState() => _TreatmentSelectorState();
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
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add Patients",
                    style: ConstantTextStyle.heading3,
                  ),
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
                    const Gap(20),
                    const Expanded(
                      child: CountSelectorWidget(),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        label: "",
                        hintText: "Female",
                        onChanged: (value) {},
                      ),
                    ),
                    const Gap(20),
                    const Expanded(
                      child: CountSelectorWidget(),
                    )
                  ],
                ),
                const Gap(40),
                CustomPrimaryButton(onPressed: () {}, buttonText: "Save")
              ],
            ),
          )
        ],
      ),
    );
  }
}
