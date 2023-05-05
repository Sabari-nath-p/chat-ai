import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class avatar extends StatelessWidget {
  const avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:216 ,
      width: 164,
      child: Image.asset('asset/image/Illustration.png'),
    );
  }
}