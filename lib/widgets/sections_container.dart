import 'package:flutter/material.dart';

import '../constants/styles.dart';


class SectionsContainer extends StatelessWidget {
  const SectionsContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.06,
      width: double.infinity,
      decoration: BoxDecoration(
        //  border:  Border.all(color: Color(0xff6b6b6b)),
        color: Color(0xffe8e8e8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: size.height * 0.06,
              width: size.height * 0.15,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff6b6b6b)),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                    "About",
                    style: Textstyles.detailtext3,
                  )),
            ),
          ),
          Expanded(
            child: Container(
              height: size.height * 0.06,
              width: size.height * 0.15,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff6b6b6b)),
              ),
              child: Center(
                  child: Text(
                    "Reviews",
                    style: Textstyles.detailtext3,
                  )),
            ),
          ),
          Expanded(
            child: Container(
              height: size.height * 0.06,
              width: size.height * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border.all(color: Color(0xff6b6b6b)),
                color: Color(0xfffeba45),
              ),
              child: Center(
                  child: Text(
                    "Porfolio",
                    style: Textstyles.detailtext3,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
