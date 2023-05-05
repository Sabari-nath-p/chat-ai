import 'package:aichatbot/screen/home/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  loadNext() {}

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pop();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                "asset/image/Splash.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 100,
                bottom: 100,
                left: 100,
                right: 100,
                child: Image.asset("asset/image/logo.png"))
          ],
        ),
      ),
    );
  }
}
