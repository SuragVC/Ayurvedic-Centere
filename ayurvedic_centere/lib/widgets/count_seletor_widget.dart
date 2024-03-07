import 'package:ayurvedic_centere/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CountSelectorWidget extends StatefulWidget {
  const CountSelectorWidget({Key? key}) : super(key: key);

  @override
  State<CountSelectorWidget> createState() => _CountSelectorWidgetState();
}

class _CountSelectorWidgetState extends State<CountSelectorWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: ConstantColors.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            const Gap(10),
            Text(
              '$count',
              style: const TextStyle(fontSize: 20),
            ),
            const Gap(10),
            InkWell(
              onTap: () {
                if (count > 0) {
                  setState(() {
                    count--;
                  });
                }
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: ConstantColors.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(Icons.remove, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
