import 'package:aichatbot/Constant/StringConst.dart';
import 'package:aichatbot/screen/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class chatHome extends StatefulWidget {
  const chatHome({super.key});

  @override
  State<chatHome> createState() => _chatHomeState();
}

class _chatHomeState extends State<chatHome> {
  @override
  Widget build(BuildContext context) {
    double ratio = MediaQuery.of(context).size.width / 384;
    return Container(
      padding: EdgeInsets.all(25 * ratio),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60 * ratio,
          ),
          Container(
            alignment: Alignment.center,
            child: SizedBox(
                height: 260 * ratio,
                width: 190 * ratio,
                child: Image.asset(
                  "asset/image/botimage.JPG",
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
              width: 55 * ratio,
              height: 55 * ratio,
              child: Image.asset(
                "asset/image/botprofile.png",
                fit: BoxFit.fill,
              )),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 14 * ratio, vertical: 22 * ratio),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff5C628F),
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Text(
              Stringchome,
              style: TextStyle(
                  color: Color.fromARGB(255, 109, 113, 143),
                  fontFamily: "hk",
                  fontSize: 14 * ratio,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 30 * ratio,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => chat()));
            },
            child: Container(
              width: 179 * ratio,
              height: 65 * ratio,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 75 * ratio),
              padding: EdgeInsets.symmetric(
                  horizontal: 22 * ratio, vertical: 14 * ratio),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff0B0F20)),
              child: GradientText(
                "Chat Now",
                colors: [
                  Color(0xffDF6C83),
                  Color(0xffDC8F8A),
                  Color(0xff9979C8),
                  Color(0xff346BD6),
                ],
                style: TextStyle(
                    fontSize: 20 * ratio,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Satoshi"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5 * ratio),
            margin: EdgeInsets.all(25 * ratio),
            child: Image.asset("asset/image/getpreminum.JPG"),
          )
        ],
      ),
    );
  }
}
