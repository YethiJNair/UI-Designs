import 'package:flutter/material.dart';

import 'newBannerGrid.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class gridManageStore extends StatelessWidget {
  gridManageStore({
    super.key,
    required this.description,
    required this.iconCard,
    required this.iconColor,
    this.newFlag = false,
  });
  Color iconColor;
  String description;
  IconData iconCard;
  bool newFlag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        // height: 20,
        child: Card(
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          color: iconColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          iconCard,
                          size: 40,
                          color: Colors.white,
                        )),
                    if (newFlag) const NewBannerGrid()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19),
                      description),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
