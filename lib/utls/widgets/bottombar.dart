



import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';


class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  backgroundColor: fromCssColor("rgba(240, 240, 243, 1)") ,
  

  // selectedItemColor: Colors.white,
  // unselectedItemColor: Colors.white.withOpacity(.60),
  // selectedFontSize: 14,
  // unselectedFontSize: 14,
  onTap: (value) {
    // Respond to item press.
  },
  items: [
    BottomNavigationBarItem(
     
      label: "Home",
      icon: Icon(Icons.home,
      color:Colors.blue),
    ),
    BottomNavigationBarItem(
      
      label: "Order",
      icon: Icon(Icons.shopping_bag, color:Colors.blue),
    ),
    BottomNavigationBarItem(
    label: "Promotions",
      icon: Icon(Icons.sports_cricket, color:Colors.blue),
    ),
    BottomNavigationBarItem(
      label: "Account",
      icon: Icon(Icons.account_circle, color:Colors.blue),
    ),
  ],
);
  }
}