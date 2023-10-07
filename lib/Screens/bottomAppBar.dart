import 'package:couponapp1/Screens/coupons.dart';
import 'package:couponapp1/Screens/favorite.dart';
import 'package:couponapp1/Screens/shops.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'mainscreen.dart';
import './notifications.dart';

class BottomAppBarwg extends StatefulWidget {
  @override
  _BottomAppBarwgState createState() => _BottomAppBarwgState();
}

class _BottomAppBarwgState extends State<BottomAppBarwg> {
  
  int _page = 1;
  void onTapped(int index) {
    setState(() {
      _page = index;
    });
  }
  final List<Widget> _pages = [Myshops(),Coupons(), CouponApp()];

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 50),
          backgroundColor: Colors.orange,
          color: Colors.deepOrange,
          height: 50,
          index: 1,
          items: <Widget>[
            Icon(
              Icons.shop,
              color: Colors.white,
              size: 30,
            ),
                          Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),

            Icon(
              Icons.local_offer,
              color: Colors.white,
              size: 30,
            ),
          ],
          onTap: onTapped,
        ),
        body: _pages[_page],
      );
  
  }
}


AppBar buildAppBara(BuildContext context , String textApp) {

  return AppBar(
    backgroundColor: Colors.deepOrange,
    elevation: 20,
    title: Center(
      child: Text(textApp),
    ),
    actions: <Widget>[
      BuildIconButton(
        function: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Favorite();
          }
          
          ));
        },
        color: Colors.white,
        icondata: Icons.favorite,
      ),
      BuildIconButton(
        function: () {

Navigator.push(context, MaterialPageRoute(builder: (context){
return NotificationsC();
}));
        },
        color: Colors.white,
        icondata: Icons.notifications_active,
      ),
    ],
  );
}

class BuildIconButton extends StatefulWidget {
  @override
  _BuildIconButtonState createState() => _BuildIconButtonState();

  final Color color;
  final IconData icondata;
  final Function function;

  BuildIconButton({this.color, this.icondata, this.function});
}

class _BuildIconButtonState extends State<BuildIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.function,
      icon: Icon(widget.icondata),
      color: widget.color,
      iconSize: 25,
      padding: EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
