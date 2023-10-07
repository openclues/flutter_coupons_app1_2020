import 'package:flutter/material.dart';
import 'coupons.dart';
import 'constants.dart';

class ClaimCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 0),
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.orange,
        child: Row(
          children: <Widget>[
            SlideOfStoreCoupons(
              urlImage: KaliExoressIage,
              descriprion: "this is a AliExpress coupon",
              discount: 40,
            ),
            SlideOfStoreCoupons(
              urlImage: Kamazonimage,
              descriprion: "this is a good coupon",
              discount: 40,
            ),
            SlideOfStoreCoupons(
              urlImage: KaliExoressIage,
              descriprion: "this is a good coupon",
              discount: 30,
            ),
            SlideOfStoreCoupons(
              urlImage: Kamazonimage,
              descriprion: "this is a good coupon",
              discount: 11,
            ),
          ],
        ),
      ),
    );
  }
}

