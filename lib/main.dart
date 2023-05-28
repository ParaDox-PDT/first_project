import 'package:first_project/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDEDEDE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDEDEDE),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 24,
            ),
            child: Image.asset(
              AppImages.icon,
            ),
          )
        ],
        elevation: 0,
        title: const Text(
          "Mat",
          style: TextStyle(
              fontSize: 24,
              color: Color(0xFF21242D),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              AppImages.backgroundImg,
              height: 203,
              width: 143,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 43,
                ),
                Container(
                  width: 104,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xFFE4E6EA),
                  ),
                  child: const Center(
                    child: Text(
                      "Document",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF21242D),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 36.5,
                ),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "Exam",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF757C8E),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
                const SizedBox(width: 60.5),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "Passed",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF757C8E),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  getConteiner(
                      title: "Physics",
                      color: const Color(0xFFD3D5FE),
                      icn: "assets/svg/physics.svg"),
                  const SizedBox(width: 38),
                  getConteiner(
                      title: "Science",
                      color: const Color(0xFFFFEFDA),
                      icn: "assets/svg/microscope.svg"),
                  const SizedBox(width: 39),
                  getConteiner(
                      title: "Chemistry",
                      color: const Color(0xFFFFE4F1),
                      icn: "assets/svg/flask.svg"),
                  const SizedBox(width: 34),
                  getConteiner(
                      title: "Biology",
                      color: const Color(0xFFCFE5FC),
                      icn: "assets/svg/dna.svg")
                ],
              ),
            ),
            const SizedBox(height: 32,),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  getConteiner(
                      title: "Math",
                      color: const Color(0xFFFFCECA),
                      icn: "assets/svg/calculator.svg"),
                  const SizedBox(width: 38),
                  getConteiner(
                      title: "Science",
                      color: const Color(0xFFDAFFD6),
                      icn: "assets/svg/translation.svg"),
                  const SizedBox(width: 39),
                  getConteiner(
                      title: "Literature",
                      color: const Color(0xFFD5BEFB),
                      icn: "assets/svg/literature.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget getConteiner(
    {required String title, required Color color, required icn}) {
  return Column(
    children: [
      Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: color),
        child: Center(
          child: SvgPicture.asset(
            icn,
            height: 32,
            width: 32,
          ),
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        title,
        style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(
              0xFF21242D,
            )),
      )
    ],
  );
}
