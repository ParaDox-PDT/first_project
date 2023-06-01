import 'package:flutter/cupertino.dart';

import '../../../utils/my_colors.dart';
import '../../../utils/my_images.dart';

class GetUser extends StatelessWidget {
  const GetUser({Key? key, required this.title, required this.subtitle, required this.img}) : super(key: key);
  final String title;
  final String subtitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height + 24;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: height*(30/812)),
      child: Row(
        children: [
          Image.asset(
            img,
            width: 44,
            height: 44,
          ),
          SizedBox(
            width: width * (16 / 375),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height > 600
                        ? height > 1200
                        ? 18
                        : 16
                        : 14,
                    fontFamily: "Poppins",
                    color: MyColor.C_21242D),
              ),
              Text(subtitle,style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w400,fontSize: height > 600
                  ? height > 1200
                  ? 16
                  : 14
                  : 12,color: MyColor.C_757C8E),)
            ],
          )
        ],
      ),
    );
  }
}
