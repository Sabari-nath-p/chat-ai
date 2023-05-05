import 'package:aichatbot/screen/home/Components/chatHome.dart';
import 'package:aichatbot/screen/home/Components/homeItem.dart';
import 'package:aichatbot/screen/home/Components/profilebar.dart';
import 'package:aichatbot/screen/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List items = [
  "Education",
  "Career Councelor",
  "Relationship Coach",
  "Personal Trainer",
  "Traveller",
  "philosopher"
];
int option = 0;

List<double> sliderPosition = [35, 100, 200];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double ratio = MediaQuery.of(context).size.width / 384;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff040A14),
        child: Stack(
          children: [
            if (option == 0)
              Positioned(
                  top: 86 * ratio,
                  left: 30 * ratio,
                  right: 30 * ratio,
                  child: ProfileBar()),
            if (option == 0)
              Positioned(
                  top: 160 * ratio,
                  left: 0 * ratio,
                  right: 0 * ratio,
                  bottom: 5 * ratio,
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        for (int i = 0; i < items.length; i++)
                          InkWell(
                              onTap: () {
                                setState(() {
                                  option = 1;
                                });
                              },
                              child: homeItem(i, items[i])),
                      ],
                    ),
                  )),
            if (option == 1)
              Positioned(
                  top: 20 * ratio,
                  left: 10 * ratio,
                  right: 5 * ratio,
                  bottom: 5 * ratio,
                  child: chatHome()),
            if (option == 2)
              Positioned(
                  top: 20 * ratio,
                  left: 10 * ratio,
                  right: 5 * ratio,
                  bottom: 5 * ratio,
                  child: settings()),
            Positioned(
                bottom: 20 * ratio,
                left: 0,
                right: 0,
                child: Container(
                  height: 90 * ratio,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 25, 28, 59),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(60))),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10 * ratio,
                          child: AnimatedContainer(
                              margin: EdgeInsets.only(
                                  left: (35 + option * 100) * ratio),
                              duration: Duration(microseconds: 200),
                              curve: Curves.easeIn,
                              child: SvgPicture.asset(
                                "asset/image/slider.svg",
                              ))),
                      Positioned(
                          top: 25,
                          bottom: 25,
                          left: 45,
                          right: 45,
                          child: Row(
                            children: [
                              Opacity(
                                opacity: (option != 0) ? .4 : 1,
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        option = 0;
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      "asset/image/Explore.svg",
                                    )),
                              ),
                              SizedBox(
                                width: 47,
                              ),
                              Opacity(
                                opacity: (option != 1) ? .4 : 1,
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        option = 1;
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      "asset/image/chat.svg",
                                    )),
                              ),
                              SizedBox(
                                width: 47,
                              ),
                              Opacity(
                                opacity: (option != 2) ? .4 : 1,
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        option = 2;
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      "asset/image/Profile.svg",
                                    )),
                              ),
                            ],
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
