import 'package:flutter/material.dart';
import 'package:uidesign/widgets/reciept.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          const Reciept(
            title: "1ITEM",
            trailing: "RECIEPT",
            logo: Icons.receipt_outlined,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: .95),
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/1.jpeg",
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Explore | Men | Navy Blue",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                  const Text("1 peice",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15)),
                  const Text("Size: XL"),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 210, 235, 255),
                              border: Border.all(color: Colors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(3))),
                          width: 25,
                          height: 25,
                          child: const Center(
                              child: Text(
                            "1",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          )),
                        ),
                        const Text(
                          " X ₹799 ",
                          style: TextStyle(fontSize: 15),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 150),
                          child: Text("₹799"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
