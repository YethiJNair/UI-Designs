import 'package:flutter/material.dart';

class Add_info extends StatelessWidget {
  const Add_info({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Text(
            "ADDITOIONAL INFORMATION",
            style:
                TextStyle(fontSize: 15, color: Color.fromARGB(255, 83, 83, 83)),
          ),
        ),
        ListTile(
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "State",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Karnataka")
            ],
          ),
        ),
        ListTile(
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Icelang@gmail.com")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1.2, color: Colors.teal),
              ),
              onPressed: () {},
              child: const Text(
                'Share Reciept',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        )
      ],
    );
  }
}
