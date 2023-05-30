import 'package:first_project/utils/my_colors.dart';
import 'package:first_project/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
        required this.title,
        required this.mainIcon,
        required this.subtitle,
        this.isAlert = false,
        this.isOn = false})
      : super(key: key);
  final String title;
  final String subtitle;
  final String mainIcon;
  final bool isAlert;
  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 40,
      child: Expanded(
        child: Row(
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: MyColor.C_0601B4.withOpacity(0.05)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(mainIcon),
                )),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: MyColor.C_181D27,
                      fontFamily: "DM Sans"),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: "DM Sans",
                      color: MyColor.C_ABABAB),
                )
              ],
            ),
            Spacer(),
            SvgPicture.asset(
              AppImages.alert,
              width: !isAlert ? 0 : 15,
            ),
            Spacer(),
            SvgPicture.asset(isOn ? AppImages.onOf : AppImages.next,width: isOn?0:7,),
            Image.asset(AppImages.onOff,width: isOn?51:0,height: isOn?30:0,)
          ],
        ),
      ),
    );
  }
}