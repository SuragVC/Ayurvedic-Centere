import 'package:flutter/material.dart';

class CountSelectorWidget extends StatefulWidget {
  const CountSelectorWidget({super.key});

  @override
  State<CountSelectorWidget> createState() => _CountSelectorWidgetState();
}

class _CountSelectorWidgetState extends State<CountSelectorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50))),
          )
        ],
      ),
    );
  }
}
