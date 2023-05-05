import 'package:flutter/material.dart';

bluebox(String amount, String type, BuildContext context) {
  double ratio = MediaQuery.of(context).size.width / 384;
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10 * ratio),
    width: 152 * ratio,
    height: 88 * ratio,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromARGB(255, 25, 28, 59),
    ),
    child: Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$${amount}/Week',
          style: TextStyle(
              fontSize: 17 * ratio,
              fontFamily: "hk",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        SizedBox(
          height: 5 * ratio,
        ),
        Text(
          'Billed $type',
          style: TextStyle(color: Color(0xff5C628F)),
        )
      ],
    )),
  );
}
