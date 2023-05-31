import 'package:first_project/ui/home_screen/widgets/text.dart';
import 'package:first_project/utils/my_colors.dart';
import 'package:first_project/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Image.asset(
                      AppImages.mainPhoto,
                      fit: BoxFit.fill,
                      height: height * (442 / 812),
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: height * (340 / 812),
                    ),
                  ],
                ),
                Container(
                  height: height * (420 / 812),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * (18 / 812),
                      ),
                      Container(
                        width: width * (58 / 376),
                        height: height * (5 / 812),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFFEF6ED)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * (30 / 376),
                            right: width * (30 / 376),
                            top: height * (35 / 812),
                            bottom: height * (20 / 812)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * (34 / 812),
                              width: width * (76 / 375),
                              foregroundDecoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      MyColor.C_53E88B.withOpacity(0.1),
                                      MyColor.C_15BE77.withOpacity(0.1)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      (height * width) * (19 / (812 * 375)))),
                              child: Center(
                                child: Text(
                                  "Popular",
                                  style: TextStyle(
                                      fontSize: height > 600 ? 12 : 10,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "BentonSans Bold",
                                      color: MyColor.C_53E88B),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(AppImages.location),
                                SizedBox(
                                  width: width * (12 / 375),
                                ),
                                SvgPicture.asset(AppImages.love),
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * (34 / 375),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rainbow Sandwich",
                                style: TextStyle(
                                    fontSize: height > 600 ? 27 : 24,
                                    fontFamily: "BentonSans Bold",
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_09051C),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Sugarless",
                                style: TextStyle(
                                    fontSize: height > 600 ? 27 : 24,
                                    fontFamily: "BentonSans Bold",
                                    fontWeight: FontWeight.w400,
                                    color: MyColor.C_09051C),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * (20 / 812),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * (34 / 375),
                          ),
                          SvgPicture.asset(AppImages.star),
                          SizedBox(
                            width: width * (10 / 375),
                          ),
                          getterText(text: "4,8 Rating"),
                          SizedBox(
                            width: width * (24 / 375),
                          ),
                          SvgPicture.asset(AppImages.shoppingBag),
                          SizedBox(
                            width: width * (10 / 375),
                          ),
                          getterText(text: "2000+ Order"),
                        ],
                      ),
                      SizedBox(
                        height: height * (20 / 812),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * (32 / 375), right: width * (7 / 375)),
                        child: const Text(
                          "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
                          style: TextStyle(
                              height: 1.2,
                              fontFamily: "BentonSans Book",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * (37 / 375), top: height * (10 / 812)),
                        child: const Row(
                          children: [
                            Text(
                              "• Strawberry",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: "BentonSans Book"),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: (height * width) * (25 / (812 * 375)),
                            vertical: 5),
                        child: Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [MyColor.C_53E88B, MyColor.C_15BE77],
                              )),
                          child: const Center(
                            child: Text(
                              "Add to Chart",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "BentonSans Bold",
                                  fontWeight: FontWeight.w400,
                                  color: MyColor.C_FEFEFF),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
