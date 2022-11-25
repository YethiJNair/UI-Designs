import 'package:flutter/material.dart';

import 'Cards.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / .6),
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
      ),
    );
  }
}
