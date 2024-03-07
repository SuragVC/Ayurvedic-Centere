import 'package:ayurvedic_centere/constants/constant_colors.dart';
import 'package:ayurvedic_centere/widgets/app_bar.dart';
import 'package:ayurvedic_centere/widgets/custom_dropdown_with_label.dart';
import 'package:ayurvedic_centere/widgets/custom_primary_button.dart';
import 'package:ayurvedic_centere/widgets/custom_text_field.dart';
import 'package:ayurvedic_centere/widgets/payment_options.dart';
import 'package:ayurvedic_centere/widgets/treatment_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey[850],
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    height: 1.42,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: "Enter your mame",
                    onChanged: (value) {},
                    label: "Name",
                  ),
                  const Gap(10),
                  CustomTextField(
                    hintText: "Enter your whatsapp number",
                    onChanged: (value) {},
                    label: "Whatsapp Number",
                  ),
                  const Gap(10),
                  CustomTextField(
                    hintText: "Enter your address",
                    onChanged: (value) {},
                    label: "Address",
                  ),
                  const Gap(10),
                  const CustomDropDownWithLabel(
                    hintText: "Choose your location",
                    label: "Location",
                    values: ["Calicut"],
                  ),
                  const Gap(10),
                  const CustomDropDownWithLabel(
                    hintText: "Select your branch",
                    label: "Branch",
                    values: ["Calicut"],
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Treatments',
                        style: ConstantTextStyle.heading3,
                      ),
                      CustomPrimaryButton(
                          isPrimary: false,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const Dialog(
                                  child: TreatmentSelector(),
                                );
                              },
                            );
                          },
                          buttonText: "+ Add Treatments"),
                    ],
                  ),
                  const Gap(10),
                  CustomTextField(
                    hintText: "",
                    onChanged: (value) {},
                    label: "Total Amount",
                  ),
                  const Gap(10),
                  CustomTextField(
                    hintText: "",
                    onChanged: (value) {},
                    label: "Discount Amount",
                  ),
                  const Gap(10),
                  const PaymentOption(),
                  const Gap(10),
                  CustomTextField(
                    hintText: "",
                    onChanged: (value) {},
                    label: "Advance Amount",
                  ),
                  const Gap(10),
                  CustomTextField(
                    hintText: "",
                    onChanged: (value) {},
                    label: "Treatment Date",
                  ),
                  const Gap(30),
                  CustomPrimaryButton(onPressed: () {}, buttonText: "Save"),
                  const Gap(10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
