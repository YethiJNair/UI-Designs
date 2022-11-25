import 'package:flutter/material.dart';

import 'Cards.dart';

class PaymentCards2 extends StatelessWidget {
  const PaymentCards2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Cards(
            name: Colors.deepOrange,
            head: "AMOUNT ON HOLID",
            sub: "0",
          ),
          Cards(
            name: const Color.fromARGB(255, 50, 204, 55),
            head: "AMOUNT RECIEVED",
            sub: "13,332",
          ),
        ],
      ),
    );
  }
}
