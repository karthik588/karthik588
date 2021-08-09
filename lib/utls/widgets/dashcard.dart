import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
 class Slider1{
   static Widget slidewidget() {
    return Card(
      elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              ),
              
      
      
        child: Container(
            height: 90.h,
    width: 310.w,
     decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(16),
                        border: Border.all(color: Colors.red)
                  ),
              
          child: Column(children: [
            HeaderSection.headersection(),
            
      TopSection.topSection(),
      
    ]),
        ));
  }
 }
 class HeaderSection{
  static Widget headersection() {
    return Container(
     
      height: 20.h,
        width: 310.w,
       decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                         border: Border.all(color: Colors.red),
                        color: Colors.red
                        
                  ),
               child: Column(
            children: [
              RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text:"january\t 2021 ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff111e6c),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
                ),
      
      WidgetSpan(
        child: InkWell(child: Icon(Icons.arrow_drop_down, size: 20.sp),
        onTap: (){
          //  Navigator.pushNamed(context, Myroutes.locationroute);
        },
      )
      ),
    
    ],
  ),
),
            ])
);  
  }
}

 
class TopSection{
  static Widget topSection() {
    return Row(
      children: [
        Expanded(child: Leftsection.leftSection()),
      
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Container(
            
            width: 1.w,
            height: 40.h,
            color: Colors.red,
          ),
        ),
        Expanded(child: Rightsection.rightSection())
      ],
    );
  }
}

class Leftsection{
  static  Widget leftSection() {
    return Column(
      children: [
         SizedBox(height: 10.h),
        Text('Sales',
            style: TextStyle(
              fontFamily: 'lato',
              color: fromCssColor("rgba(0, 0, 0, 1)"),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            )),
        SizedBox(height: 10.h),
        Text('INR\t100.0',
            style: TextStyle(
              fontFamily: 'lato',
              color: Color(0xff000000),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            )),
       
      ],
    );
  }
}
 

 class Rightsection{
   static  Widget rightSection() {
    return Column(
      children: [
         SizedBox(height: 10.h),
        Text('Orders',
            style: TextStyle(
              fontFamily: 'lato',
               color: fromCssColor("rgba(0, 0, 0, 1)"),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            )),
        SizedBox(height: 10.h),
        Row(
          children: [
            SizedBox(width: 10.w),
           Text('0\n Pending',textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lato',
                  color: Color(0xff000000),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                )),
                 SizedBox(width: 10.w),
               Text('0\n Declined',textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lato',
                  color: Color(0xff000000),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                )),
                SizedBox(width: 10.w),
                 Text('0\n Completed',textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'lato',
                  color: Color(0xff000000),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                )),
          ],
        ),
       
      ],
    );
  }
 }