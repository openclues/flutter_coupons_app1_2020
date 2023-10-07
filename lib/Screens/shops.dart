import 'package:flutter/material.dart';
import 'bottomAppBar.dart';

class Myshops extends StatefulWidget {
  Myshops({Key key}) : super(key: key);

  @override
  _MyshopsState createState() => _MyshopsState();
}

class _MyshopsState extends State<Myshops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar:buildAppBara(context,'shops'),
    );
  }
}