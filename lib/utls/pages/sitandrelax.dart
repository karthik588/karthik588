import 'dart:async';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zopnote/utls/pages/addprofilelast.dart';
class Sitpage extends StatefulWidget {
  const Sitpage({ Key? key }) : super(key: key);

  @override
  _SitpageState createState() => _SitpageState();
}

class _SitpageState extends State<Sitpage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),() => Navigator.push(context,  MaterialPageRoute(builder:(context) => Lastlandingpage(),)));
  }
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child:Column(
          children: [
            Container(
               width: 125.w,
               height: 120.h,
                   decoration: BoxDecoration(
                     
                image: DecorationImage(
                  image: AssetImage("assets/images/zopnote-logotyp.png"),
                  
                ),
              ),
            ),
         
    
              Center(
                child: Container(
                  child: Card(
       elevation: 0.0,
  
  
      margin: EdgeInsets.all(0),
      
      child: SizedBox(
        width: 400.w,
        height: 400.h,
        child: Padding(
          padding:  EdgeInsets.only(top:5.0.w),
          child: Column(
            children: [
                  Image.asset(
                    "assets/images/sit.png",
                  width: 346.w,
                  height: 208.h,
                  ), //NetworkImage
                  SizedBox(
                    height: 5.h,
                  ), //SizedBox
                  Padding(
                    padding:  EdgeInsets.only(left:10.0.w),
                    child: Text("Sit Back and Relax.\nWe will Verify Your\nAccount. ",textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'lato',
                         color: fromCssColor("  rgba(17, 30, 108, 1)"),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                  )
            ],
          ), //Column
        ), //Padding
      ),
                   ),
                ),
              ) ,//SizedBox
    
          
    
          ],)
      ),
    );
      
    
  }
}
      
   