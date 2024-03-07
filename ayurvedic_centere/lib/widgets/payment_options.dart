import 'package:flutter/material.dart';

class PaymentOption extends StatefulWidget {
  const PaymentOption({Key? key});

  @override
  State createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  String? _selectedPaymentOption;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: 1000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Payment Option:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: RadioListTile<String>(
                    title: const Text(
                      'Card',
                      style: TextStyle(fontSize: 12),
                    ),
                    value: 'Card',
                    groupValue: _selectedPaymentOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentOption = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RadioListTile<String>(
                    title: const Text(
                      'Cash',
                      style: TextStyle(fontSize: 12),
                    ),
                    value: 'Cash',
                    groupValue: _selectedPaymentOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentOption = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RadioListTile<String>(
                    title: const Text(
                      'UPI',
                      style: TextStyle(fontSize: 12),
                    ),
                    value: 'UPI',
                    groupValue: _selectedPaymentOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentOption = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
