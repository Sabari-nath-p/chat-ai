import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:aichatbot/screen/settings/subscribe/subscribe.dart';

import 'listCard.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    double ratio = MediaQuery.of(context).size.width / 384;
    return Container(
      color: Color(0xff040A14),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 79 * ratio,
            width: double.infinity,
            child: const DecoratedBox(
              decoration: const BoxDecoration(color: Color(0xff040A14)),
            ),
          ),
          subscribe(),
          SizedBox(
            height: 23 * ratio,
            width: double.infinity,
            child: const DecoratedBox(
              decoration: const BoxDecoration(color: Color(0xff040A14)),
            ),
          ),
          Container(
            width: 335 * ratio,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xff040A14),
              border:
                  Border.all(color: Color.fromARGB(255, 25, 28, 59), width: 1),
            ),
            child: Column(
              children: [
                listCard(
                    "Request a feature",
                    "asset/image/settings-list-icons/components/request.png",
                    context),
                listCard("Contact us", "asset/image/contactas.png", context),
                listCard(
                    "About us",
                    "asset/image/settings-list-icons/components/about.png",
                    context),
                listCard(
                    "Privacy Policy",
                    "asset/image/settings-list-icons/components/privacy.png",
                    context),
                listCard(
                    "Rate our App",
                    "asset/image/settings-list-icons/components/rate.png",
                    context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
