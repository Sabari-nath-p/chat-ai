import 'dart:convert';

import 'package:aichatbot/screen/chat/componets/botmessage.dart';
import 'package:aichatbot/screen/chat/componets/presonMessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class chat extends StatefulWidget {
  chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  List messageList = [];
  TextEditingController messageText = TextEditingController();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double ratio = MediaQuery.of(context).size.width / 384;

    String current = DateFormat("hh:mm a").format(DateTime.now()).toString();
    print(current);
    return Scaffold(
      // Root- Container that contains a column for components
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff040A14),

        // Stack to hold  ---Components---
        child: Stack(
          children: [
            if (false)
              SizedBox(
                height: 59,
                width: double.infinity,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(color: Color(0xff040A14)),
                ),
              ),
            Positioned(
                top: 80 * ratio,
                left: 30 * ratio,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.white,
                    size: 25 * ratio,
                  ),
                )),
            Positioned(
              top: 60 * ratio,
              left: 30 * ratio,
              right: 30 * ratio,
              child: Container(
                width: double.infinity,
                height: 65 * ratio,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20 * ratio),
                padding: EdgeInsets.symmetric(
                    horizontal: 22 * ratio, vertical: 14 * ratio),
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(25),
                    color: Color(0xff040A14)),
                child: GradientText(
                  "Language Expert",
                  textAlign: TextAlign.center,
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
            SizedBox(child: Image.asset('asset/image/Vector 121 (Stroke).png')),
            if (false)
              SizedBox(
                height: 14,
                width: double.infinity,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(color: Color(0xff040A14)),
                ),
              ),
            Positioned(
              top: 130 * ratio,
              left: 30 * ratio,
              right: 30 * ratio,
              child: Text('Today $current',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff5C628F), fontFamily: "hk")),
            ),


            // Created ListView to Display components there ...!
            //Load Data from Components 
            Positioned(
                top: 150 * ratio,
                left: 0 * ratio,
                right: 0 * ratio,
                bottom: 155 * ratio,
                child: ListView(
                  controller: scrollController,
                  children: [
                    //for (int i = 0; i < messageList.length; i++) messageList[i],
                    for (var mess in messageList) mess,
                    SizedBox(
                      height: 30 * ratio,
                    )
                  ],
                )),


                
            Positioned(
                bottom: 0,
                height: 149 * ratio,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      //   color: Color.fromRGBO(5, 14, 32, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(10),
                        width: 200 * ratio,
                        child: Image.asset("asset/image/getpreminum.JPG"),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 52 * ratio,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(133, 33, 36, 60),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: messageText,
                                onSubmitted: (value) {
                                  sendMessage(value);
                                },
                                style: TextStyle(
                                    fontFamily: "hk", color: Colors.white54),
                                maxLines: null,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Send Message",
                                    hintStyle: TextStyle(
                                        fontFamily: "hk",
                                        color: Colors.white54)),
                              ),
                            ),
                            SizedBox(
                              width: 8 * ratio,
                            ),
                            InkWell(
                              onTap: () {
                                sendMessage(messageText.text.trim());

                                setState(() {
                                  messageText.text = "";
                                });
                              },
                              child: Icon(
                                Icons.send,
                                color: Colors.white70,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  sendMessage(String message) async {
    setState(() {
      messageList.add(personMessage(message));
      //scrollController.animateTo(scrollController.position.maxScrollExtent,
      // duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    });

    final Response = await http
        .post(Uri.parse("https://app.propelchat.com/api/v1/chat/"), body: {
      "message": message,
      "api_key": "39930627-9739-4f58-b4cf-0bc3070c4bb5"
    });

    print(Response.statusCode);
    print(Response.body);
    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      if (!data["error"]) {
        setState(() {
          messageList.add(botMessage(data["reply"]));
          autoDown();
          print(messageList.length);
        });
      } else
        setState(() {
          messageList.add(botMessage("something went to worng"));

          autoDown();
        });
    }
  }

  autoDown() {
    setState(() {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    });
  }
}
