import 'package:flutter/material.dart';

class PremBotButton extends StatelessWidget {
  const PremBotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // width: ,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(right: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 47,
              width: 170,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Select Domain',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 47,
              width: 170,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: const Text(
                  'Get Premium',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
