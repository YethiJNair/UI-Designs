import 'package:flutter/material.dart';

class DukaanCard extends StatefulWidget {
  const DukaanCard({super.key});

  @override
  State<DukaanCard> createState() => _DukaanCardState();
}

class _DukaanCardState extends State<DukaanCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
          // width: MediaQuery.of(context).size.width,

          decoration: const BoxDecoration(
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          // ignore: sort_child_properties_last
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: SizedBox(
              height: 210,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                      width: 170,
                      // height: 150,
                      child: ClipRRect(
                        // width: 10,
                        // height: 10,
                        // padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'Assets/logo.jpeg',
                          // width: 50,
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    // ignore: prefer_const_constructors
                    child: Text(
                      'Get Dukaan Premium for just \n₹4,999/year',
                      textAlign: TextAlign.center,
                      // ignore: prefer_const_constructors
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 19),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'All the advanced features for scaling your \nbussiness.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  )
                ],
              ),
            ), // shadowColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
