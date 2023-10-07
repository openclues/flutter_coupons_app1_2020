import 'package:couponapp1/Screens/shops.dart';
import 'package:flutter/material.dart';
import 'bottomAppBar.dart';
import 'couponnumber.dart';
import 'claimcoupon.dart';

class Coupons extends StatefulWidget {
  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: buildAppBara(context, 'hi there'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Expanded(
                flex: 12,
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Select your \nFavorite Store",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        "see all",
                        style: TextStyle(color: Colors.purple),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Myshops();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ClaimCodePage(),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
                        ],
                      ),
                    ),
                  );
                }
              
}

class SlideOfStoreCoupons extends StatelessWidget {
  final String urlImage;
  final String descriprion;
  final int discount;
  SlideOfStoreCoupons(
      {@required this.urlImage,
      @required this.descriprion,
      @required this.discount});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        padding: EdgeInsets.only(left: 3),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CouponsNumber(
              imageurl: urlImage,
              descr: descriprion,
            );
          }));
        },
        child: Column(
          children: <Widget>[
            Container(
              width: 110,
              height: 150,
              child: Card(
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(urlImage),
                    ),
                    Text(
                      "You have a discount of \n $discount%",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "StoreName",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
