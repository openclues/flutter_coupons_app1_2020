import 'package:couponapp1/Screens/favorite.dart';
import 'package:flutter/material.dart';
import './Screens/bottomAppBar.dart';
import './Screens/favorite.dart';
import './Screens/notifications.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes: {
        '/favorite': (context )=> Favorite(),
        '/notification': (context) => NotificationsC(),
      },

      home: BottomAppBarwg(),
    );
  }
}




