import 'package:flutter/material.dart';
import 'package:uidesign/widgets/dividerWidget.dart';

// ignore: must_be_immutable
class Listviews extends StatelessWidget {
  Listviews({super.key});

  List tiles = [
    {
      "image": "Assets/1.jpeg",
      "title": "Order #5458115644",
      "price": "699",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/4.jpeg",
      "title": "Order #5458115644",
      "price": "800",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/3.jpeg",
      "title": "Order #5458545644",
      "price": "450",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/4.jpeg",
      "title": "Order #5458115644",
      "price": "800",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/3.jpeg",
      "title": "Order #5458111421",
      "price": "450",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/2.jpeg",
      "title": "Order #5458115654",
      "price": "999",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/1.jpeg",
      "title": "Order #5458115645",
      "price": "699",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/4.jpeg",
      "title": "Order #5458115644",
      "price": "800",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/3.jpeg",
      "title": "Order #5458111421",
      "price": "450",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/3.jpeg",
      "title": "Order #5458115454",
      "price": "450",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/2.jpeg",
      "title": "Order #5458154548",
      "price": "9S99",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/3.jpeg",
      "title": "Order #5458111421",
      "price": "450",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/4.jpeg",
      "title": "Order #5458115121",
      "price": "800",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/3.jpeg",
      "title": "Order #5458111421",
      "price": "450",
      "date": "Jul 24 02:06 PM"
    },
    {
      "image": "Assets/4.jpeg",
      "title": "Order #5458115644",
      "price": "800",
      "date": "Jul 24 02:06 PM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tiles.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 50,
                  maxHeight: 50,
                ),
                child: Image.asset(tiles[index]["image"]),
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "            ₹${tiles[index]["price"]}",
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.circle,
                        size: 12,
                        color: Colors.green,
                      ),
                      Text(
                        " Sucessful",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              title: Text(
                tiles[index]["title"],
              ),
              subtitle: Text(tiles[index]["date"]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "₹${tiles[index]["price"]} deposited to 11445428565",
                style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 72, 72, 72)),
              ),
            ),
            const DividerWidget()
          ],
        );
      },
    );
  }
}
