import 'package:flutter/material.dart';

import '../constants/styles.dart';

class PersonDetailsSection extends StatelessWidget {
  const PersonDetailsSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Sijo Simon",
              style: Textstyles.nametext,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: size.width * 0.08,
              width: size.width * 0.30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                    "1000 INR/Day",
                    style: Textstyles.pricetext,
                  )),
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              "assets/img_location.png",
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Trivandrum,Palayam",
              style: Textstyles.locationtext,
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              "assets/img_ratings.png",
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "4.5",
              style: Textstyles.locationtext,
            )
          ],
        ),
      ],
    );
  }
}
