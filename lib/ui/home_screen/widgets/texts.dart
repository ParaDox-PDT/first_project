import 'package:flutter/material.dart';

import '../../../utils/my_colors.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key,required this.title,required this.subtitle}) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: MyColor.C_000000),
        ),
        Text(
          subtitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: MyColor.C_EF4637,
              fontFamily: "Poppins"),
        )
      ],
    );
  }
}
