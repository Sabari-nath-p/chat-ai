import 'package:aichatbot/screen/subscription/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class subscribe extends StatelessWidget {
  const subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
          width: double.infinity,
          color: Color(0xff040A14),
        ),
        Positioned(
          left: 20,
          child: InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => subscription())),
            child: Image.asset('asset/image/Frame 3796_Subscribe.png'),
          ),
        )
      ],
    );
  }
}
