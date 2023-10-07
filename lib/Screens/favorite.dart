import 'package:flutter/material.dart';
import 'bottomAppBar.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.orange,
      appBar: buildAppBara(context,'Favorite'),

    );
  }
}