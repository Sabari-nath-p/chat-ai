import 'package:flutter/material.dart';

personMessage(String Message) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      SizedBox(
        height: 15,
      ),
      SizedBox(
          width: 55,
          height: 55,
          child: Image.asset(
            "asset/image/botprofile.png",
            fit: BoxFit.fill,
          )),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 25, 28, 59),
            border: Border.all(
              color: Color(0xff5C628F),
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20))),
        child: Text(
          '$Message',
          style: TextStyle(
              color: Color.fromARGB(255, 109, 113, 143),
              fontFamily: "hk",
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    ],
  );
}
