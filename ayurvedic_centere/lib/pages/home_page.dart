import 'package:ayurvedic_centere/implementation/notifier.dart';
import 'package:ayurvedic_centere/pages/registration_page.dart';
import 'package:ayurvedic_centere/widgets/app_bar.dart';
import 'package:ayurvedic_centere/widgets/custom_drop_down.dart';
import 'package:ayurvedic_centere/widgets/custom_primary_button.dart';
import 'package:ayurvedic_centere/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

final providerNotifier =
    ChangeNotifierProvider<ProviderNotifier>((ref) => ProviderNotifier());

class Homepage extends ConsumerStatefulWidget {
  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(providerNotifier);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - 100;
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          SizedBox(
                              width: width * 0.7,
                              child: const CustomSearchBar()),
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
                    SizedBox(
                      height: height * 0.3,
                      child: const SingleChildScrollView(
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
                    ),
                    provider.patientList.isEmpty
                        ? Center(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/no_customer.jpg',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                                const Text("No records found")
                              ],
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: CustomPrimaryButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    buttonText: "Register Now",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
