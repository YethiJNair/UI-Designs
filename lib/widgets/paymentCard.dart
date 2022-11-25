import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 212,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                  color: Color.fromARGB(255, 231, 231, 231), width: 2)),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Transcation Limit",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "A free limit up to which you will receive\nthe online payments directly in your bank ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
                ),
                Container(
                  margin: EdgeInsets.only(top: 9),
                  width: 350,
                  height: 7,
                  child:const  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.25,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      backgroundColor: Color.fromARGB(255, 229, 229, 229),
                    ),
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 12),
                //   child: LinearProgressIndicator(
                  

                //     value: 13332 / 50000,
                //     minHeight: 8,
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "36,668 left out of ₹50,000",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 115, 114, 114),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Increase limit",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
