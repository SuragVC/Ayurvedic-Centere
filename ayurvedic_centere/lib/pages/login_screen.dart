import 'package:ayurvedic_centere/pages/home_page.dart';
import 'package:ayurvedic_centere/widgets/custom_primary_button.dart';
import 'package:ayurvedic_centere/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/login_screen_image.png'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Login Or Register To Book Your Appointments',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.grey[850],
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            height: 1.42,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const Gap(15),
                        CustomTextField(
                          label: "Email",
                          hintText: "Enter your email",
                          onChanged: (value) {},
                        ),
                        const Gap(15),
                        CustomTextField(
                          isPassword: true,
                          label: "Password",
                          hintText: "Enter your password",
                          onChanged: (value) {},
                        ),
                        const Gap(80),
                        CustomPrimaryButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homepage(),
                              ),
                            );
                          },
                          buttonText: 'Log In',
                        ),
                        const Gap(20),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: width,
                padding: const EdgeInsets.only(bottom: 16.0),
                child: const Text(
                  "By creating or logging into an account you are agreeing with our Terms and Conditions and Privacy Policy.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
