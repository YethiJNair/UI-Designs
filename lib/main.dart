import 'package:flutter/material.dart';
import 'package:uidesign/screens/Home.dart';

List tiles = [
  {
    "image": "Assets/1.jpeg",
    "title": "Order #5458115644",
    "price": "699",
    "date": "Jul 24 02:06 PM",
    "name": "Netflix | Navy Blue Tshirt"
  },
  {
    "image": "Assets/4.jpeg",
    "title": "Order #5458115644",
    "price": "800",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Blue Tshirt | Men"
  },
  {
    "image": "Assets/3.jpeg",
    "title": "Order #5458545644",
    "price": "450",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Pink Tshirt | Men"
  },
  {
    "image": "Assets/4.jpeg",
    "title": "Order #5458115644",
    "price": "800",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Blue Tshirt | Men"
  },
  {
    "image": "Assets/3.jpeg",
    "title": "Order #5458111421",
    "price": "450",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Pink Tshirt | "
  },
  {
    "image": "Assets/2.jpeg",
    "title": "Order #5458115654",
    "price": "999",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Red Tshirt"
  },
  {
    "image": "Assets/1.jpeg",
    "title": "Order #5458115645",
    "price": "699",
    "date": "Jul 24 02:06 PM",
    "name": "Netflix | Navy Blue Tshirt"
  },
  {
    "image": "Assets/4.jpeg",
    "title": "Order #5458115644",
    "price": "800",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Blue Tshirt | Men"
  },
  {
    "image": "Assets/3.jpeg",
    "title": "Order #5458111421",
    "price": "450",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Pink Tshirt | "
  },
  {
    "image": "Assets/3.jpeg",
    "title": "Order #5458115454",
    "price": "450",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Pink Tshirt | "
  },
  {
    "image": "Assets/2.jpeg",
    "title": "Order #5458154548",
    "price": "9S99",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Red Tshirt"
  },
  {
    "image": "Assets/3.jpeg",
    "title": "Order #5458111421",
    "price": "450",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Pink Tshirt | "
  },
  {
    "image": "Assets/4.jpeg",
    "title": "Order #5458115121",
    "price": "800",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Blue Tshirt | Men"
  },
  {
    "image": "Assets/3.jpeg",
    "title": "Order #5458111421",
    "price": "450",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Pink Tshirt | "
  },
  {
    "image": "Assets/4.jpeg",
    "title": "Order #5458115644",
    "price": "800",
    "date": "Jul 24 02:06 PM",
    "name": "Oversized | Blue Tshirt | Men"
  },
];
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menu(),
    );
  }
}
