import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnnualBilling extends StatelessWidget {
  const AnnualBilling({super.key});

  @override
  Widget build(BuildContext context) {
    // Root Container - Contains having circular border with specified color
    return Container(
    height:88,
    width:319,
    decoration: BoxDecoration(
      color: Colors.red[200],//Colors for the Container 
      border: Border.all(
          color: Color.fromARGB(255, 25, 28, 59), //color of border
          width: 2, //width of border
        ),
      borderRadius: BorderRadius.circular(5)
    ),  
    child: Center(
      child: Row(
        children: [
          Text('\$2/Week',style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w500,
                            color: Colors.white),),
          Text('\$100/Week',style: TextStyle(
                            fontSize: 16,
                            fontFamily: "hk",
                            fontWeight: FontWeight.w500,
                            color: Colors.white),),                  
        ],
      ),
    ),
);
  }
}