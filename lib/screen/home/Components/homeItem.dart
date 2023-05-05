import 'package:flutter/material.dart';

homeItem(int index, String name) => Container(
      width: 165,
      height: 175,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              child: Image.asset(
                "asset/image/homeCard/${(index % 6) + 1}.png",
                fit: BoxFit.fill,
              )),
          Positioned(
            top: 25,
            left: 22,
            right: 22,
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: "Satoshi"),
            ),
          ),
        ],
      ),
    );
