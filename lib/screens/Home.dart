import 'package:flutter/material.dart';
import 'package:uidesign/screens/Screen1.dart';
import 'package:uidesign/screens/Screen2.dart';
import 'package:uidesign/screens/Screen3.dart';
import 'package:uidesign/screens/Screen4.dart';
import 'package:uidesign/screens/Screen5.dart';
import 'package:uidesign/screens/Screen6.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  Menu({super.key});

  List tiles = [
    {
      "title": "Additional information",
      "icon": Icons.info_rounded,
      "Screen": const Screen2()
    },
    {"title": "Manage store", "icon": Icons.store, "Screen": const Screen1()},
    {"title": "payments", "icon": Icons.payment, "Screen": const Screen3()},
    {
      "title": "Dukaan premium",
      "icon": Icons.workspace_premium,
      "Screen": const Screen4()
    },
    {
      "title": "Order",
      "icon": Icons.shopping_cart_sharp,
      "Screen": const Screen5()
    },
    {
      "title": "Catalogue",
      "icon": Icons.list_sharp,
      "Screen": const Screen6(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: ListView.builder(
          itemCount: tiles.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(tiles[index]["icon"]),
              title: Text(tiles[index]["title"]),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => tiles[index]["Screen"]));
              },
            );
          }),
    );
  }

  Names c = Names();
}

class Names {
  String? titles;
  late Scaffold screen;
  Icon? icons;
}
