import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const CardWidget({
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack(
        [
          // Icon and Title Row
          HStack(
            [
              VxBox(
                child: Icon(
                  Icons.description,
                  color: Colors.white,
                  size: 25,
                ))
                  .blue500
                  .size(35, 35)
                  .roundedSM
                  .make(),
              10.widthBox,
              title.text.white.bold.xl.make(),
            ],
          ),
          const Spacer(),
          // Description and Date
          VStack(
            [
              description.text.white.bold.xl2.make(),
              10.heightBox,
              date.text.white.thin.sm.make(),
            ],
          ),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).p16(), // Padding inside the card
    ).blue600.rounded.size(210, 210).margin(Vx.m8).make();
  }
}
