import 'package:flutter/material.dart';

import '../../../core/constant/Fonts.dart';
import '../../../core/constant/color.dart';

class buttom_order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: ConstantColor.gray,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: ConstantColor.white,
                  borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    "قيد التوصيل",
                    style: TextStyle(
                        color: ConstantColor.black,
                        fontSize: 15,
                        fontFamily: Fonts.cairo_semiBold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: ConstantColor.white,
                    borderRadius: BorderRadius.circular(6)),
                child: TextButton(
                    onPressed: (() {}),
                    child: Text(
                      "الطلبات الحاليه",
                      style: TextStyle(
                          color: ConstantColor.black,
                          fontSize: 15,
                          fontFamily: Fonts.cairo_semiBold),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: ConstantColor.orange,
                  borderRadius: BorderRadius.circular(6)),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    "كل الطلبات",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: Fonts.cairo_semiBold),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
