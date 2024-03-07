import 'package:ayurvedic_centere/pages/home_page.dart';
import 'package:ayurvedic_centere/widgets/custom_primary_button.dart';
import 'package:ayurvedic_centere/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  String username = '';
  String password = '';
  String error = "";
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  void login() async {
    isLoading = true;
    error = "";
    setState(() {});
    final provider = ref.read(providerNotifier);
    bool isLoggedIn =
        await provider.login(username: username, password: password);
    if (isLoggedIn) {
      isLoading = false;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    } else {
      error = "Invalid Credentials";
      isLoading = false;
      setState(() {});
    }
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
                          label: 'Email',
                          hintText: 'Enter your email',
                          onChanged: (value) {
                            username = value;
                          },
                        ),
                        const Gap(15),
                        CustomTextField(
                          isPassword: true,
                          label: 'Password',
                          hintText: 'Enter your password',
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        error.isNotEmpty
                            ? Text(
                                error,
                                style: const TextStyle(
                                  color: Colors.red,
                                ),
                              )
                            : SizedBox(),
                        const Gap(80),
                        isLoading
                            ? const CircularProgressIndicator()
                            : CustomPrimaryButton(
                                onPressed: () {
                                  login();
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
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text:
                            "By creating or logging into an account you are agreeing with our ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "Terms and Conditions",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 115, 209)),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: " and ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 115, 209)),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
