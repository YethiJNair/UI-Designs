import 'package:flutter/material.dart';
import 'package:uidesign/widgets/dividerWidget2.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class PremFoot extends StatelessWidget {
  const PremFoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 13),
            child: Text(' Need help? Get in touch',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              PremiumFootIcon(
                  buttonText: 'Live Chat', iconfoot: Icons.messenger_outline),
              PremiumFootIcon(
                  buttonText: 'Phone Call',
                  iconfoot: Icons.local_phone_outlined),
            ],
          ),
          DividerWidget2()
        ],
      ),
    );
  }
}

class PremiumFootIcon extends StatefulWidget {
  const PremiumFootIcon(
      {super.key, required this.iconfoot, required this.buttonText});
  final IconData iconfoot;
  final String buttonText;

  @override
  State<PremiumFootIcon> createState() => _PremiumFootIconState();
}

class _PremiumFootIconState extends State<PremiumFootIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      width: 170,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(
                widget.iconfoot,
                size: 50,
              ),
              onPressed: () {},
            ),
          ),
          Text(widget.buttonText),
        ],
      ),
    );
  }
}
