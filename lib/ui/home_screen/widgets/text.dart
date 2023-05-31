import 'package:first_project/utils/my_colors.dart';
import 'package:flutter/cupertino.dart';

Widget getterText({required String text}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: MyColor.C_3B3B3B.withOpacity(0.3),
        letterSpacing: 0.5,
        fontFamily: "BentonSans Regular"),
  );
}
