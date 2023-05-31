import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Box extends StatelessWidget {
  const Box({Key? key, required this.icon,required this.title}) : super(key: key);
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SvgPicture.asset(icon),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0xFF7000FF)),
        )
      ],
    );
  }
}
