import 'package:figma/constants/styles.dart';
import 'package:figma/widgets/buttons.dart';
import 'package:figma/widgets/details_section.dart';
import 'package:figma/widgets/person_details.dart';
import 'package:figma/widgets/sections_container.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> images = [
    "assets/img1.png",
    "assets/img2.png",
    "assets/img3.png",
    "assets/img4.png",
    "assets/img5.png",
    "assets/img6.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.width * 0.70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: HexColor('#252C35'),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Profile", style: Textstyles.profiletext)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: SizedBox(
                                width: 70,
                                height: 70,
                                child: CircleAvatar(
                                  backgroundImage: const AssetImage(
                                      'assets/img_profile_image.png'),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 60,
                                          left: 50,
                                          right: 10,
                                          child: Container(
                                            width: 10,
                                            height: 10,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: Container(
                                              width: 15,
                                              height: 15,
                                              decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                  shape: BoxShape.circle),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            PersonDetailsSection(size: size),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              child: DetailSection(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250, left: 15, right: 15),
                  child: SectionsContainer(size: size),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4 / 2.5,
                  ),
                  itemBuilder: (ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]))),
                    );
                  }),
            ),
            Buttons(size: size)
          ],
        ),
      ),
    );
  }
}
