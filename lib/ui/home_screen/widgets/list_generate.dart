import 'package:flutter/material.dart';

import '../../../utils/my_colors.dart';

class ListGetter extends StatelessWidget {
  const ListGetter({Key? key, required this.imagesList}) : super(key: key);
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height + 24;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 32,
          child: Stack(
            children: List.generate(
                imagesList.length,
                (index) => Positioned(
                    left: index * 23,
                    child: Image.asset(
                      imagesList[index],
                      width: 32,
                      height: 32,
                    ))),
          ),
        ),
        Positioned(
          left: imagesList.length * 23,
          child: Container(
            width: 32,
            height: 32,
            child: Center(
                child: Text(
              "+${imagesList.length}",
              style: TextStyle(
                  fontSize: 12,
                  color: MyColor.C_21242D,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins"),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: MyColor.C_E4E6EA),
          ),
        ),
      ],
    );
  }
}
