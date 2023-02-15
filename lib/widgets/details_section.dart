import 'package:flutter/material.dart';

import '../constants/styles.dart';

class DetailSection extends StatelessWidget {
  const DetailSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                    "assets/img_aeroplane.png"),
                Text(
                  "DISTANCE",
                  style: Textstyles.detailtext1,
                ),
                Text(
                  "5KM",
                  style: Textstyles.detailtext2,
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Image.asset("assets/img_mesg.png"),
                Text(
                  "JOB",
                  style: Textstyles.detailtext1,
                ),
                Text(
                  "187",
                  style: Textstyles.detailtext2,
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Image.asset("assets/img_reviews.png"),
                Text(
                  "REVIEWS",
                  style: Textstyles.detailtext1,
                ),
                Text(
                  "5",
                  style: Textstyles.detailtext2,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
