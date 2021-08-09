import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:zopnote/utls/widgets/draweritems.dart';


class Mydrawer  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    // final imageurl= "https://avatars.githubusercontent.com/u/12619420?v=4";
    return SafeArea(
      child: Drawer(
        child: Container(
        color: primarywhite,
        padding: EdgeInsets.only(top:20.h,left: 20.w),
        child: Column(

          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 20.w,),
                Column(
                 
                  children: [
                    Text('Home Needs',style: TextStyle(color:fromCssColor("rgba(17, 30, 108, 1)"),
                    fontSize:18.sp,
                    fontWeight: FontWeight.w400),),
                     Text('Grocery',style: TextStyle(color:fromCssColor("rgba(17, 30, 108, 1)"),
                    fontSize:16.sp,
                    fontWeight: FontWeight.w400),),
                  ],
                )
              ],
            ),
            SizedBox(height: 30.h,),
    
            Column(
              children: drawerItems.map((element) => Padding(
                padding:  EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(element['icon'],color: Colors.black,size: 30,),
                    SizedBox(width: 20.w,),
                    Text(element['title'],style: TextStyle(color: fromCssColor("rgba(17, 30, 108, 1)"),fontWeight: FontWeight.bold,fontSize: 16.sp))
                  ],
    
                ),
              )).toList(),
            ),
    
             SizedBox(height: 240.h,),
           
               Column(
                 children: drawerItems1.map((element) => Padding(
                   padding:  EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Icon(element['icon'],color: Colors.black,size: 25,),
                       SizedBox(width: 20.w,),
                       Text(element['title'],style: TextStyle(color: fromCssColor("rgba(17, 30, 108, 1)"),fontWeight: FontWeight.bold,fontSize: 16.sp))
                     ],
    
                   ),
                 )).toList(),
               ),
    
    
              ],
    
            )
    
    
        ),
        ),
    );

  
      
    
  }
}