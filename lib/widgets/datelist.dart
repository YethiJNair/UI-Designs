import 'package:flutter/material.dart';

class Datelist extends StatelessWidget {
  const Datelist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListTile(
        leading: const Text(
          "May 31, 05:42 PM",
          style: TextStyle(fontSize: 18),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.circle,
              color: Colors.blue,
            ),
            Text(
              "  Delivered",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 78, 78, 78)),
            )
          ],
        ),
      ),
    );
  }
}
