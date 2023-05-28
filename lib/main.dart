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
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        title: const Text(
          "Account",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF21242D),
              fontFamily: "Poppins"),
        ),
        actions: const [
          Icon(
            Icons.more_horiz_outlined,
            color: Color(0xFF21242D),
            size: 24,
          ),
          SizedBox(
            width: 28,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              "assets/images/mainImg.png",
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Ayano Nana",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF21242D),
                  fontFamily: "Poppins"),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Hello every body, I will score high in",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757C8E)),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "this software.",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757C8E)),
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: [
                getInfo(
                    color: const Color(0xFFD3D5FE),
                    text: "Courses",
                    n: "14",
                    img: "assets/svg/document.svg"),
                const SizedBox(
                  width: 16,
                ),
                getInfo(
                    color: const Color(0xFFDAFFD6),
                    text: "Score",
                    n: "82",
                    img: "assets/svg/scoreboard.svg"),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                getInfo(
                    color: const Color(0xFFCFE5FC),
                    text: "Friends",
                    n: "123",
                    img: "assets/svg/male.svg"),
                const SizedBox(
                  width: 16,
                ),
                getInfo(
                    color: const Color(0xFFFFE4F1),
                    text: "Following",
                    n: "89",
                    img: "assets/svg/femaler.svg"),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 24),
                child:Column(
                  children: [
                    const SizedBox(height: 28,),
                    getRow(icon: "assets/svg/video.svg", text: "Video Playback"),
                    const SizedBox(height: 20,),
                    getRow(icon: "assets/svg/doc.svg", text: "Download Resource"),
                    const SizedBox(height: 20,),
                    getRow(icon: "assets/svg/calendar.svg", text: "Schedule"),
                  ],
                )
            )

          ],
        ),
      ),
    );
  }
}

Widget getInfo(
    {required Color color,
    required String text,
    required String n,
    required String img}) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(left: 24),
      width: 165,
      height: 84,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFE4E6EA),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: color),
            child: SvgPicture.asset(
              img,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Color(0xFF353945)),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                n,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Color(0xFF23262F)),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget getRow({required String icon,required String text}){
  return Row(
    children: [
      Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF458CFF)),
        child: SvgPicture.asset(icon),
      ),
      const SizedBox(
        width: 16,
      ),
      Text(
        text,
        style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF21242D)),
      )
    ],
  );
}
