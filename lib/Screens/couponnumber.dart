import 'package:flutter/material.dart';
import 'bottomAppBar.dart';

class CouponsNumber extends StatefulWidget {
  final String  imageurl;
  final String descr;

CouponsNumber({@required this.imageurl,@required this.descr});  


  @override
  _CouponsNumberState createState() => _CouponsNumberState();
}

class _CouponsNumberState extends State<CouponsNumber> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: buildAppBara(context, 'Claim Coupon'),
      body: Column(children: <Widget>[
        Image.network(widget.imageurl, height: 150, width: 170, color: Colors.redAccent,),
        Text(widget.descr),
        Row(children: <Widget>[
          RaisedButton(onPressed: null, child: Text("Go to the Link"),

          ),
           RaisedButton(onPressed: null, child: Text("Copy the coupon"),),
          
        ],)
      ],),

    );
  }
}
