import 'dart:async';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:zopnote/utls/widgets/bottombar.dart';
import 'package:zopnote/utls/widgets/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route.dart';

class StoreFront extends StatefulWidget {
  const StoreFront({Key? key}) : super(key: key);

  @override
  _StoreFrontState createState() => _StoreFrontState();
}

class _StoreFrontState extends State<StoreFront> {
  @override
  Widget build(BuildContext context) {
     return Container(
      
       child: Scaffold(
        //  backgroundColor: fromCssColor(" rgba(200, 231, 224, 1)"),

        
        //  extendBodyBehindAppBar: true,
        extendBody: true,

        appBar: PreferredSize(

          preferredSize: Size.fromHeight(60.h),
          
          child:AppBar(
           actions: [
          // action button
          IconButton(
            icon: Icon( Icons.account_circle,size: 30.sp, ),
            onPressed: () { },
          ),
          ],
         backgroundColor: fromCssColor(" rgba(200, 231, 224, 1)"),
            elevation: 0.h,
            centerTitle: true,
            title: Text(
              "Home Needs",
               style: TextStyle(color: fromCssColor("rgba(17, 30, 108, 1)"), fontSize: 16.sp),
            )),
        ),
        
        
        body: Column(
          children: [
            Stack(alignment: Alignment.topCenter,
              

              children:[
                
                Container(
                  height: 114.h,
                  width:double.infinity,
                  color: fromCssColor(" rgba(200, 231, 224, 1)"),
                ),
                
                _card1(),
               
                  
                  
                 
                
              ],
              
                 
            ),
 SizedBox(
                  height: 20.h,
                 
                ),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 26.w),
               child: Row(
                 children: [
                   _card2(),
                   SizedBox(width: 20.w,),
                    _card3()
                 ],
               ),
             ),
              SizedBox(
                  height: 10.h,
                 
                ),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 26.w),
               child: Row(
                 children: [
                   _card5(),
                   SizedBox(width: 20.w,),
                    _card4()
                 ],
               ),
             ),
            
          ],
         
        ),
        
       
          
        drawer: Mydrawer(),
        bottomSheet: BottomBar(),
    ),
     );
  }
  Widget _card1(){
    return Card(
              margin: EdgeInsets.all(0),
               
               elevation: 4,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
          ),
              child: SizedBox(
                
          width: 303.w,
          height: 154.h,
          child: Padding(
            padding:  EdgeInsets.only(top:25.0.h),
            child: Column(
            children: [
              RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text:"Complete your profile for full features ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff111e6c),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
                ),
      
      WidgetSpan(
        child: InkWell(child: Icon(Icons.arrow_forward_ios, size: 18.sp),
        onTap: (){
           Navigator.pushNamed(context, Myroutes.locationroute);
        },
      )
      ),
    
    ],
  ),
),
              
              
                 SizedBox(
              height: 10.h,
              ),
              Image.asset(
              "assets/images/Group 231.png",
              height: 90.h,
              width: 100.w,
              ), //NetworkImage
              //SizedBox
              
            ],
            ), //Column
          ), //Padding
              ), //SizedBox
    );
    
  }
   Widget _card2(){
    return Card(
              margin: EdgeInsets.all(0),
               
               elevation: 5,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
          ),
              child: SizedBox(
                
          width: 142.w,
          height: 142.h,
          child: Padding(
            padding:  EdgeInsets.only(top:0.0.h),
            child: Column(
            children: [
                
              Image.asset(
              "assets/images/addcustomer.png",
              height: 114.h,
              width: 120.w,
              ),
               
              Text("Add customer ",textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lato',
                  color: Color(0xff111e6c),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
                ),
               //NetworkImage
              //SizedBox
              
            ],
            ), //Column
          ), //Padding
              ), //SizedBox
    );
    
  }
   Widget _card3(){
    return Card(
              margin: EdgeInsets.all(0),
               
               elevation: 5,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          ),
              child: SizedBox(
                
          width: 142.w,
          height: 142.h,
          child: Padding(
            padding:  EdgeInsets.only(top:0.0.h),
            child: Column(
            children: [
              
              Image.asset(
              "assets/images/vieworder.png",
              height: 114.h,
              width: 120.w,
              ),
              
              Text("View Orders ",
                style: TextStyle(
                  fontFamily: 'lato',
                  color: Color(0xff111e6c),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
                ),
                 //NetworkImage
              //SizedBox
              
            ],
            ), //Column
          ), //Padding
              ), //SizedBox
    );
    
  }
   Widget _card5(){
    return Card(
              margin: EdgeInsets.all(0),
               
               elevation: 5,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
          ),
              child: SizedBox(
                
          width: 142.w,
          height: 142.h,
          child: Padding(
            padding:  EdgeInsets.only(top:0.0.h),
            child: Column(
            children: [
                
              Image.asset(
              "assets/images/delivery.png",
              height: 114.h,
              width: 120.w,
              ),
               
              Text("Manage Delivery",textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lato',
                  color: Color(0xff111e6c),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
                ),
               //NetworkImage
              //SizedBox
              
            ],
            ), //Column
          ), //Padding
              ), //SizedBox
    );
   }
    Widget _card4(){
    return Card(
              margin: EdgeInsets.all(0.sp),
               
               elevation: 5,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          ),
              child: SizedBox(
                
          width: 142.w,
          height: 142.h,
          child: Padding(
            padding:  EdgeInsets.only(top:0.0.h),
            child: Column(
            children: [
                
              Image.asset(
              "assets/images/khata.png",
              height: 110.h,
              width: 115.w,
              ),
               
              Text("Manage Your\nKhata ",textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff111e6c),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
                ),
               //NetworkImage
              //SizedBox
              
            ],
            ), //Column
          ), //Padding
              ), //SizedBox
    );
}
}
