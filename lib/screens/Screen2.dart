import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List tiles = [
    {"title": "Share Dukaan App", "logo": Icons.share},
    {"title": "Change Language", "logo": Icons.language},
    {"title": "WhatsApp Chat Support", "logo": Icons.whatsapp_sharp},
    {"title": "Privacy Policy", "logo": Icons.lock},
    {"title": "Rate Us", "logo": Icons.star_border},
    {"title": "Sign Out", "logo": Icons.logout},
  ];

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Additional Information",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: tiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: Icon(tiles[index]["logo"]),
                      title: Text(tiles[index]["title"]),
                      trailing: change(index));
                }),
          ),
          const Text(
            "Version",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "4.2.4",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  change(val) {
    switch (val) {
      case 0:
        return const Icon(Icons.arrow_forward_ios);
      case 1:
        return const Icon(Icons.arrow_forward_ios);
      case 2:
        return Switch(value: isSwitched, onChanged: toggleSwitch);

      default:
    }
  }
}
