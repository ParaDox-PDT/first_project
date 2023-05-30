import 'package:first_project/utils/my_colors.dart';
import 'package:flutter/cupertino.dart';

class LastText extends StatelessWidget {
  const LastText({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: const TextStyle(
          fontSize: 14,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          color: MyColor.C_white
        ),),
        Text(subtitle,style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
          color: MyColor.C_white
        ),)
      ],
    );
  }
}
