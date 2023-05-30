import 'package:first_project/ui/home_screen/widgets/list_item.dart';
import 'package:first_project/ui/home_screen/widgets/more_items.dart';
import 'package:first_project/utils/my_colors.dart';
import 'package:first_project/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.C_E5E5E5,
        appBar: AppBar(
          backgroundColor: MyColor.C_E5E5E5,
          elevation: 0,
          title: const Text(
            "Profile",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: MyColor.C_181D27,
                fontFamily: "DM Sans"),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColor.C_0601B4,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                          offset: Offset(0, 7))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 24),
                  child: Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: 57,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: MyColor.C_white,
                              border:
                                  Border.all(color: MyColor.C_white, width: 2)),
                          child: Image.asset(
                            AppImages.userImg,
                            height: 53,
                            width: 53,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Itunuoluwa Abidoye",
                              style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.C_white),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "@Itunuoluwa",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MyColor.C_D7D7D7,
                                  fontFamily: "DM Sans"),
                            )
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset(AppImages.pencil)
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColor.C_white),
                height: 356,
                child: const Padding(
                  padding:
                      EdgeInsets.only(bottom: 27, left: 16, right: 16, top: 24),
                  child: Column(
                    children: [
                      ListItem(
                        title: "My Account ",
                        mainIcon: AppImages.userIcon,
                        subtitle: "Make changes to your account",
                        isAlert: true,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ListItem(
                          title: "Saved Beneficiary",
                          mainIcon: AppImages.userIcon,
                          subtitle: "Manage your saved account"),
                      SizedBox(
                        height: 25,
                      ),
                      ListItem(
                        title: "Face ID / Touch ID",
                        mainIcon: AppImages.lock,
                        subtitle: "Manage your device security",
                        isOn: true,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ListItem(
                          title: "Two-Factor Authentication",
                          mainIcon: AppImages.defend,
                          subtitle: "Two-Factor Authentication"),
                      SizedBox(
                        height: 25,
                      ),
                      ListItem(
                          title: "Log out",
                          mainIcon: AppImages.outDoor,
                          subtitle: "Further secure your account for safety")
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "More",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "DM Sens",
                      color: MyColor.C_181D27),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColor.C_white),
                child: const Padding(
                  padding:
                      EdgeInsets.only(bottom: 17, left: 16, right: 16, top: 17),
                  child: Column(
                    children: [
                      MoreItems(
                        title: "Help & Support",
                        mainIcon: AppImages.notification,
                      ),
                      SizedBox(height: 20,),
                      MoreItems(title: "About App", mainIcon: AppImages.heart)
                    ],
                    
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
