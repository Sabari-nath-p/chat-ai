import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

listCard(String name, String asset, BuildContext context) {
      double ratio = MediaQuery.of(context).size.width / 384;
  return Container(
    margin: EdgeInsets.only(top: 20*ratio),
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 20.75*ratio,
            ),
            SizedBox(
                width: 20*ratio,
                height: 20*ratio,
                child: Image.asset(
                  '$asset',
                  fit: BoxFit.fill,
                )),
            SizedBox(
              width: 12.75*ratio,
            ),
            Text(
              "$name",
              style: TextStyle(
                  fontSize: 16*ratio,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20*ratio, right: 20*ratio, top: 20*ratio),
          alignment: Alignment.center,
          child: Image.asset('asset/image/Vector 121 (Stroke).png'),
        ),
      ],
    ),
  );
}
