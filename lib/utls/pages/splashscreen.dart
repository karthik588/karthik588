import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zopnote/utls/pages/welcomepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';






class SplashScreen extends StatefulWidget {
 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),() => Navigator.push(context,  MaterialPageRoute(builder:(context) => Welcome(),)));
  }
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    //   print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 87.h),
        child: Column
        (
          
          children: [
            Image.asset("assets/images/zopnote-logotyp.png", height: 466.h,width: 466.w,),
            SizedBox(height: 30.h,),
            // SpinKitRipple(color: Colors.red,),
          ],),
      ),
    );
  
      
    
  }
}