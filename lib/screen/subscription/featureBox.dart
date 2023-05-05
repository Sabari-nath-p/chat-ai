import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

featureBox(String Feature, BuildContext context) {
  double ratio = MediaQuery.of(context).size.width / 384;
  return Container(
    margin: EdgeInsets.only(left: 1 * ratio, bottom: 25 * ratio),
    child: Row(
      children: [
        SizedBox(
            height: 20 * ratio,
            width: 20 * ratio,
            child: Image.asset('asset/image/Tick.png')),
        SizedBox(
          width: 7 * ratio,
        ),
        Text(
          "$Feature",
          style: TextStyle(
              fontSize: 16 * ratio,
              fontFamily: "hk",
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ],
    ),
  );
}
