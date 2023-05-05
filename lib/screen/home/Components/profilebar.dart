import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "Hi",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "hk",
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Text(
              ". Gouri",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Satoshi"),
            ),
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Color(0xff0D1227))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://th.bing.com/th/id/R.5508f584c0aca31c7be81eae7d502268?rik=QE3k5bESQ%2bshDg&riu=http%3a%2f%2fwww.zastavki.com%2fpictures%2foriginals%2f2013%2fGirls___Models_Women_profile_faces_hair_in_face_emotions_models_042161_.jpg&ehk=rlBO9REoLPZPpYsCwmKaEykRhMheZQosg20K7R55Ic4%3d&risl=&pid=ImgRaw&r=0",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
