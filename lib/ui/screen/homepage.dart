import 'package:flutter/material.dart';
import 'package:tawsel/model/order.dart';
import 'package:tawsel/ui/widget/customcard.dart';
import '../../core/constant/Fonts.dart';
import '../widget/homepage_componant/homepage_title.dart';
import '../widget/homepage_componant/order_homepage.dart';

class homepage extends StatelessWidget {
  homepage({Key? key, required this.order, required this.title})
      : super(key: key);
  final String title;
  Order order;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: home_title(),
              height: height * 0.13,
            ),
            Container(height: height * 0.35, child: order_homepage()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الطلبات الحاليه",
                  style: TextStyle(fontSize: 25, fontFamily: Fonts.cairo_Bold),
                ),
                Container(
                    width: width * .9,
                    height: height * 0.35,
                    child: CustomCard(
                      order: order,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
