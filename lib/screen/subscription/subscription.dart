import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:aichatbot/screen/subscription/Avatar.dart';
import 'package:aichatbot/screen/subscription/bluebox.dart';
import 'package:aichatbot/screen/subscription/featureBox.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class subscription extends StatelessWidget {
  subscription({super.key});

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    double ratio = density(1);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: density(20), right: density(20), top: density(130)),
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff040A14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              "  Get Access to",
              colors: [
                Color(0xffDF6C83),
                Color(0xffDC8F8A),
                Color(0xff9979C8),
                Color(0xff346BD6),
              ],
              style: TextStyle(
                  fontSize: density(20),
                  fontWeight: FontWeight.w700,
                  fontFamily: "hk"),
            ),

            SizedBox(
              height: density(20),
              width: double.infinity,
            ),
            SizedBox(
              child: Image.asset('asset/image/Vector 121 (Stroke).png'),
            ),

            Container(
              height: density(205),
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                      child: Column(
                    children: [
                      SizedBox(
                        height: density(20),
                      ),
                      featureBox("Unlimited Chat", context),
                      featureBox("Voice Chat", context),
                      featureBox("Export Chat History", context),
                      featureBox("GPT 4", context)
                    ],
                  )),
                  Positioned(right: 0, left: density(200), child: avatar())
                ],
              ),
            ),

            SizedBox(
              height: density(10),
              width: double.infinity,
            ),

            SizedBox(
              child: Image.asset('asset/image/Vector 121 (Stroke).png'),
            ),
            SizedBox(
              height: density(35),
            ),
            // Container contains text
            Container(
              child: Center(
                child: Text(
                  'Choose the Plan',
                  style: TextStyle(
                      fontSize: density(16),
                      fontFamily: "hk",
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5C628F)),
                ),
              ),
            ),

            SizedBox(
              height: density(15),
              width: double.infinity,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: Color(0xff040A14)),
              ),
            ),

            // Contains row with two container

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bluebox("10", "Weekly", context),
                bluebox("7", "Monthly", context)
              ],
            ),
            SizedBox(
              height: 29 * ratio,
              width: double.infinity,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: Color(0xff040A14)),
              ),
            ),

            // Bringing Image of Subsciption with fixed- Size need to replace
            Container(
              alignment: Alignment.center,
              height: 125 * ratio,
              width: 319 * ratio,
              child: Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                      top: 12 * ratio,
                      left: 25 * ratio,
                      right: 5 * ratio,
                      child: Container(
                        width: 300 * ratio,
                        height: 100 * ratio,
                        padding: EdgeInsets.all(20 * ratio),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xffDF6C83),
                              Color(0xffF38A83),
                              Color(0xff9979C8),
                              Color(0xff346BD6)
                            ])),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$2 ",
                              style: TextStyle(
                                  fontSize: 19 * ratio,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "/Week",
                              style: TextStyle(
                                  fontSize: 18 * ratio,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "100\$ Billed Annually",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      top: 0,
                      left: 40 * ratio,
                      child: Container(
                        width: 100 * ratio,
                        height: 30 * ratio,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xff5822AF),
                              Color(0xff6E10B8),
                            ])),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Save ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "60%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),

            SizedBox(
              height: 10 * ratio,
              width: double.infinity,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: Color(0xff040A14)),
              ),
            ),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20 * ratio),
              child: Text(
                '*The subscription will be automatically renewed. You can manage or cancel subscription at any time',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff5C628F),
                    fontSize: 11 * ratio,
                    fontFamily: "hk"),
              ),
            )
          ],
        ),
      ),
    );
  }

  double density(double size) {
    return size * MediaQuery.of(context).size.width / 384;
  }
}
