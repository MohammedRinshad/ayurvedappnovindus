import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/radio_button_provider.dart';

class PaymentRadioButton extends StatelessWidget {
  const PaymentRadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Consumer<PaymentProvider>(
          builder: (context, payProvider, _) {
            return Row(
              children: [
                Radio<String>(
                  value: 'Cash',
                  groupValue: payProvider.selectedPayment,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    payProvider.setPayment(value!);
                  },
                ),
                const Text('Cash'),
              ],
            );
          },
        ),
        Consumer<PaymentProvider>(
          builder: (context, payProvider, _) {
            return Row(
              children: [
                Radio<String>(
                  value: 'Card',
                  groupValue: payProvider.selectedPayment,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    payProvider.setPayment(value!);
                  },
                ),
                const Text('Card'),
              ],
            );
          },
        ),
        Consumer<PaymentProvider>(
          builder: (context, payProvider, _) {
            return Row(
              children: [
                Radio<String>(
                  value: 'UPI',
                  groupValue: payProvider.selectedPayment,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    payProvider.setPayment(value!);
                  },
                ),
                const Text('UPI'),
              ],
            );
          },
        ),
      ],
    );
  }
}
