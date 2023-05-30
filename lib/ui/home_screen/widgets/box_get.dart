import 'package:flutter/material.dart';

import '../../../utils/my_colors.dart';

class BoxGetter extends StatelessWidget {
  const BoxGetter({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83,
      height: 83,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.C_white,
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                color: Colors.grey,
                offset: Offset(0, 4))
          ]),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              color: MyColor.C_EF4637),
        ),
      ),
    );
  }
}
