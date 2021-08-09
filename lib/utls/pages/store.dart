import 'dart:async';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:zopnote/utls/pages/storefront.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Store extends StatefulWidget {
  

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),() => Navigator.push(context,  MaterialPageRoute(builder:(context) => StoreFront(),)));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf2E5E5E5),
      
      body: SafeArea(
        child:Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:27.h),
              child: Container(
                 width: 125.w,
                 height: 120.h,
                     decoration: BoxDecoration(
                       
                  image: DecorationImage(
                    image: AssetImage("assets/images/zopnote-logotyp.png"),
                    
                  ),
                ),
              ),
            ),
         
    
              Center(
                child: Column(
                  
                  children: [
                        Image.asset(
                          "assets/images/shop.png",
                        width: 151.w,
                        height: 204.h,

                       
                        ), //NetorkImage
                        SizedBox(
                          height: 5.h,
                        ), //SizedBox
                        Padding(
                          padding:  EdgeInsets.only(left:10.0.w),
                          child: Text("Congratulation\n Your Digital Store is Created. ",textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'lato',
                             color: fromCssColor("  rgba(17, 30, 108, 1)"),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            )),
                        )
                  ],
                ),
              ) ,//SizedBox
    
          
    
          ],)
      ),
    );
      
    
  }
}

