import 'package:flutter/material.dart';
import 'bottomAppBar.dart';


class CouponApp extends StatefulWidget {
  @override
  _CouponAppState createState() => _CouponAppState();
}

class _CouponAppState extends State<CouponApp> {

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         backgroundColor: Colors.orange,
        appBar: buildAppBara(context, 'Deals app'),
      );

  }

}
