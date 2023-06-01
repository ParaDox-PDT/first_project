import 'package:first_project/ui/home_screen/widgets/adder.dart';
import 'package:first_project/ui/home_screen/widgets/list_generate.dart';
import 'package:first_project/ui/home_screen/widgets/user_block.dart';
import 'package:first_project/utils/my_colors.dart';
import 'package:first_project/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height + 24;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColor.C_FFFFFF,
      appBar: AppBar(
        backgroundColor: MyColor.C_FFFFFF,
        elevation: 0,
        toolbarHeight: height * (64 / 812),
        leading: Padding(
          padding: EdgeInsets.only(
              left: width * (24 / 375),
              top: height * (16 / 812),
              bottom: height * (16 / 812)),
          child: SvgPicture.asset(AppImages.backArrow),
        ),
        title: Text(
          "Chat",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: height > 600
                  ? height > 1200
                      ? 28
                      : 24
                  : 20,
              fontFamily: "Poppins",
              color: MyColor.C_21242D),
        ),
        actions: [
          SvgPicture.asset(AppImages.zoom),
          SizedBox(
            width: width * (24 / 375),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * (24 / 375), vertical: height * (12 / 812)),
        child: Column(
          children: [
            const Adder(
              title: "Group",
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              title: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Physic Class",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: MyColor.C_21242D,
                      fontFamily: "Poppins"),
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: ListGetter(imagesList: [
                  AppImages.user1,
                  AppImages.user2,
                  AppImages.user3,
                  AppImages.user4,
                  AppImages.user5,
                ]),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  width: width * (70 / 375),
                  height: height * (32 / 812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MyColor.C_458CFF),
                  child: const Center(
                    child: Text(
                      "Join",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins",
                          color: MyColor.C_FFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              title: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Biology Class",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: MyColor.C_21242D,
                      fontFamily: "Poppins"),
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: ListGetter(imagesList: [
                  AppImages.user1,
                  AppImages.user2,
                  AppImages.user3,
                  AppImages.user4,
                  AppImages.user5,
                ]),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  width: width * (70 / 375),
                  height: height * (32 / 812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MyColor.C_458CFF),
                  child: const Center(
                    child: Text(
                      "Join",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins",
                          color: MyColor.C_FFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            const Adder(title: "Messages"),
            const GetUser(
                title: "Sanderly Suly",
                subtitle: "Have you done your homework yet?",
                img: AppImages.userBig1),
            const GetUser(
                title: "Erward Dory",
                subtitle: "Hi, how old are you?",
                img: AppImages.userBig2),
            const GetUser(
                title: "Alex Fendere",
                subtitle: "How are you doing?",
                img: AppImages.userBig3),
            const GetUser(
                title: "David Bob",
                subtitle: "No, i am best",
                img: AppImages.userBig4),
          ],
        ),
      ),
    );
  }
}
