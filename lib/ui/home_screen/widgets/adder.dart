import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/my_colors.dart';
import '../../../utils/my_images.dart';

class Adder extends StatelessWidget {
  const Adder({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 24;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: height > 600
                      ? height > 1200
                      ? 18
                      : 16
                      : 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: MyColor.C_121214),
            ),
            Container(
              width: 32,
              height: 32,
              child: Center(
                child: SvgPicture.asset(AppImages.plus),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: MyColor.C_E4E6EA),
            )
          ],
        ),
        SizedBox(height: height*(16/812),),
        Divider(),
      ],
    );
  }
}
