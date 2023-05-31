import 'package:first_project/ui/home_screen/widgets/box.dart';
import 'package:first_project/utils/my_colors.dart';
import 'package:first_project/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEDED),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEDEDED),
        actions: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
              margin: EdgeInsets.only(left: 16),
              child: Image.asset("assets/images/userImg.png"),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Firdavs",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                "Let's save your money!",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )
            ],
          ),
          Spacer(),
          SvgPicture.asset("assets/svg/notification.svg"),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Column(
        children: [

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your balance",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFB0AAAA)),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      "\$926.21",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Box(icon: "assets/svg/teleg.svg",title: "Send",),
              Box(icon: "assets/svg/qr.svg",title: "QR scan",),
              Box(icon: "assets/svg/humo.svg",title: "Pay",),
              Box(icon: "assets/svg/rec.svg",title: "More",)
            ],
          )
        ],
      ),
    );
  }
}
