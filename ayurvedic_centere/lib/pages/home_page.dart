import 'package:ayurvedic_centere/pages/registration_page.dart';
import 'package:ayurvedic_centere/widgets/app_bar.dart';
import 'package:ayurvedic_centere/widgets/custom_drop_down.dart';
import 'package:ayurvedic_centere/widgets/custom_primary_button.dart';
import 'package:ayurvedic_centere/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(
                        width: width * 0.7, child: const CustomSearchBar()),
                    Gap(30),
                    Expanded(
                      child: CustomPrimaryButton(
                        onPressed: () {},
                        buttonText: "Search",
                      ),
                    )
                  ],
                ),
              ),
              const Gap(20),
              const SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(flex: 3, child: Text("Sort By :")),
                        Gap(30),
                        Expanded(
                          flex: 3,
                          child: CustomDropDown(
                            values: ["Date", "Price", "Rating"],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              // Column(
              //   children: List.generate(length, (index) => null),
              // ),
              SizedBox(
                height: 50,
                child: Expanded(
                    child: CustomPrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  buttonText: "Register",
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
