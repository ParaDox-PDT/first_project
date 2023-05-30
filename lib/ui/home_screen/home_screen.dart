import 'package:first_project/ui/home_screen/widgets/box_get.dart';
import 'package:first_project/ui/home_screen/widgets/last_text.dart';
import 'package:first_project/ui/home_screen/widgets/texts.dart';
import 'package:first_project/utils/my_colors.dart';
import 'package:first_project/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  color: MyColor.C_EF4637.withOpacity(0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 38, left: 22),
                        child: Icon(
                          Icons.arrow_back,
                          color: MyColor.C_EF4637,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 51, left: 39),
                        child: Container(
                          width: 117,
                          height: 117,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: MyColor.C_white),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(AppImages.userImages),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 15, right: 40, left: 34.16, bottom: 50),
                        child: Text(
                          "Tobi Lateef",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              color: MyColor.C_1A1A1A),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 38, right: 18),
                        child: Row(
                          children: [
                            Spacer(),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  color: MyColor.C_1A1A1A,
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Texts(title: "Profession", subtitle: "Contractor"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Texts(
                                title: "Contact",
                                subtitle: "+234 808 2344 4675"),
                            const SizedBox(
                              height: 15,
                            ),
                            const Texts(title: "Location", subtitle: "Lagos"),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Position",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: MyColor.C_000000),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      AppImages.onOff,
                                      width: 34,
                                      height: 16,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "open",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: MyColor.C_EF4637,
                                          fontFamily: "Poppins"),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              "Jobs done",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: MyColor.C_1A1A1A,
                  fontFamily: "Poppins"),
            ),
            const SizedBox(
              height: 21,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxGetter(title: "Product\nDesign"),
                BoxGetter(title: "Product\nDesign"),
                BoxGetter(title: "Product\nDesign"),
                BoxGetter(title: "Product\nDesign"),
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.first),
                SvgPicture.asset(AppImages.second),
                SvgPicture.asset(AppImages.second),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 42,
                  height: 233,
                  color: MyColor.C_EF4637,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("4.3",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 60,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                  )),
                              Text(
                                "Average Rating",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "pay range",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "150k - 200k",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "(negotiable)",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("37",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 60,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                  )),
                              Text(
                                "Jobs Completed",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "02",
                                style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "ongoing",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_white,
                                    fontFamily: "Poppins"),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 13,),
                      Row(
                        children: [
                          SizedBox(width: 41,),
                          LastText(title: "Availability", subtitle: "Excellent"),
                          SizedBox(width: 43,),
                          LastText(title: "Service", subtitle: "Good"),
                          SizedBox(width: 36,),
                          LastText(title: "Quality", subtitle: "Good"),

                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 233,
                  color: MyColor.C_EF4637.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 42,
                        height: 90,
                        color: MyColor.C_white,
                      )
                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
