import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class PremiumYoutube extends StatelessWidget {
  const PremiumYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('What is Dukaan premium? ',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding:
                const EdgeInsets.only(top: 2, bottom: 16, left: 16, right: 16),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(
                      image: AssetImage(
                        'Assets/Youtube.jpeg',
                      ),
                    )),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          height: 170,
                          width: 170,
                          image: AssetImage(
                            'Assets/youtubeLogo.png',
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 5,
          ),
        ],
      ),

      color: Colors.white,
      height: 300,
      width: MediaQuery.of(context).size.width,
    );
  }
}
