import 'package:flutter/material.dart';
import 'package:tawsel/ui/widget/customcard.dart';
import 'package:tawsel/ui/widget/homepage_componant/homepage_title.dart';
import 'package:tawsel/ui/widget/orders_component/buttom_order.dart';

import '../../core/constant/Fonts.dart';
import '../../model/order.dart';

class orderr extends StatelessWidget {
  orderr({Key? key, required this.order, required this.title})
      : super(key: key);
  final String title;
  Order order;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: home_title(),
              height: height * 0.15,
            ),
            Container(
              height: height * .1,
              child: buttom_order(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الطلبات الحاليه",
                  style: TextStyle(fontSize: 25, fontFamily: Fonts.cairo_Bold),
                ),
                Container(
                  width: width * .9,
                  height: height * 0.4,
                  child: CustomCard(
                    order: order,
                  ),
                ),
                Text(
                  "طلبات منتهيه",
                  style: TextStyle(fontSize: 25, fontFamily: Fonts.cairo_Bold),
                ),
                Container(
                    width: width * .9,
                    height: height * 0.33,
                    child: CustomCard(
                      order: order,
                    )),
                Container(
                    width: width * .9,
                    height: height * 0.4,
                    child: CustomCard(
                      order: order,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
