import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/styles.dart';
class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: size.width * 0.12,
          width: size.width* 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor('#FEBA45'),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img_call.png"),
                Text("Call",style: Textstyles.calltext,),
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: size.width * 0.12,
          width: size.width* 0.40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor('#252C35'),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img_mesgg.png"),
                Text("Chat",style: Textstyles.chattext,),
              ],
            ),
          ),

        ),
      ],
    );
  }
}