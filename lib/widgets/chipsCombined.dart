import 'package:flutter/material.dart';

import 'chip.dart';

class ChipsCombined extends StatelessWidget {
  const ChipsCombined({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Chips(
            title: "On hold",
            bgclr: Color.fromARGB(255, 209, 209, 209),
            fontclr: Color.fromARGB(255, 134, 134, 134)),
        Chips(title: "Payouts (15)", bgclr: Colors.teal, fontclr: Colors.white),
        Chips(
            title: "Refunds",
            bgclr: Color.fromARGB(255, 209, 209, 209),
            fontclr: Color.fromARGB(255, 134, 134, 134)),
      ],
    );
  }
}
