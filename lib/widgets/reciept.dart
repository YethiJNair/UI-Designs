import 'package:flutter/material.dart';

class Reciept extends StatelessWidget {
  const Reciept(
      {super.key,
      required this.title,
      required this.trailing,
      required this.logo});
  final String title;
  final String trailing;
  final IconData logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: ListTile(
        leading: Text(
          title,
          style: const TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 83, 83, 83)),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              logo,
              color: Colors.blue,
            ),
            Text(
              "  $trailing",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
