import 'package:flutter/material.dart';

import '../main.dart';
import 'dividerWidget.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  bool isSwitched = false;

  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Card(
                                elevation: 0,
                                child: SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset(tiles[index]["image"]),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 180,
                                            child: Text(
                                              tiles[index]["name"],
                                              style: const TextStyle(
                                                fontSize: 18,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text("1 piece"),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, bottom: 5),
                                        child: Text(
                                          "₹${tiles[index]["price"]}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "In stock",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Icon(Icons.more_vert),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ),
                              ],
                            )
                          ],
                        ),
                        const DividerWidget(),
                        SizedBox(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share_outlined,
                                color: Colors.black,
                              ),
                              label: const Text(
                                "Share Product",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
