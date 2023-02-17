import 'package:flutter/material.dart';
import '../../../core/constant/Fonts.dart';
import '../../../core/constant/color.dart';

class home_title extends StatefulWidget {
  @override
  State<home_title> createState() => _titleState();
}

class _titleState extends State<home_title> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ConstantColor.gray,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    child: Image(
                      image: AssetImage("asset/Fonts/Icons/Group 11387.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: width * 0.14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "كرسبي&كرانشي",
                        style: TextStyle(
                            fontSize: 20, fontFamily: Fonts.cairo_Regular),
                      ),
                      Row(
                        children: [
                          Text("شارع10 -باب الشعريه- القاهره",
                              style:
                                  TextStyle(fontFamily: Fonts.cairo_Regular)),
                          Icon(Icons.location_pin),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('asset/Fonts/Images/download.jpg')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
