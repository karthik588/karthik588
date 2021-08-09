import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:zopnote/utls/widgets/bottombar.dart';
import 'package:zopnote/utls/widgets/drawer.dart';

import '../route.dart';
class Kycpage extends StatefulWidget {


  @override
  _KycpageState createState() => _KycpageState();
}

class _KycpageState extends State<Kycpage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[200],

        //  extendBodyBehindAppBar: true,
        extendBody: true,

        appBar: AppBar(
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

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              Column(
                children: [
                 new LinearPercentIndicator(
              lineHeight: 5.0,
              percent: 0.3,
              backgroundColor: Colors.grey[200],
              progressColor: Colors.blue[800],
              ),
                ],
              
              ),
                  SizedBox(height: 20.h,),
             new Text("Add KYC Details",
                  style: TextStyle(
                    fontFamily: 'lato',
                    color: fromCssColor("  rgba(17, 30, 108, 1)"),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                  )),
                   SizedBox(height: 20.h,),
             new Text("*Identification Details",
                  style: TextStyle(
                    fontFamily: 'lato',
                    color: fromCssColor("  rgba(0, 0, 0, 1)"),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                  )),
                  SizedBox(height: 30.h,),
                   Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       SizedBox(width: 10.w,),
                       OutlinedButton(
                         
                         onPressed: () {},
                          child:Text("Adhar card"),
                           ),
                          
                           OutlinedButton(
                         onPressed: () {},
                          child:Text("Voter Id") ),
                          OutlinedButton(
                         onPressed: () {},
                          child:Text("Pan card") ),
                          OutlinedButton(
                         onPressed: () {},
                          child:Text("Driving\nLicense") ),
                           SizedBox(width: 10.w,),
                     ],
                   ),
                     SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '*Enter Id Number',labelStyle: TextStyle(
                          color: fromCssColor(" rgba(0, 0, 0, 1)"),
                         fontFamily: 'lato',
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w400,
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  
     Padding(
       padding:  EdgeInsets.symmetric(horizontal: 30.w),
       child: Row(
         children: [
           Card(
            margin: EdgeInsets.all(0),
           
             elevation: 5,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5.sp),
  ),
            child: SizedBox(
              width: 136.w,
              height: 80.h,
              child: Padding(
                padding:  EdgeInsets.only(top:20.0.h),
                child: Column(
                  children: [
                     Text("Add Front ",
                        style: TextStyle(
                          fontFamily: 'lato',
                          color: fromCssColor("  rgba(17, 30, 108, 1)"),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        )),
                        SizedBox(height: 5.h,),
                        Icon(
                          Icons.camera_alt_rounded,
                          size: 30.sp,
                        ),
                    SizedBox(
                      height: 5.h,
                    ), //SizedBox
                   
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
    ),
    SizedBox(width: 20.w,),
      Card(
            margin: EdgeInsets.all(0),
           
             elevation: 5,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5.sp),
  ),
            child: SizedBox(
              width: 136.w,
              height: 80.h,
              child: Padding(
                padding:  EdgeInsets.only(top:20.0.h),
                child: Column(
                  children: [
                     Text("Add Back ",
                        style: TextStyle(
                          fontFamily: 'lato',
                         color: fromCssColor("  rgba(17, 30, 108, 1)"),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        )),
                        SizedBox(height: 5.h),
                        Icon(
                          Icons.camera_alt_rounded,
                          size: 30.sp,
                        ),
                    SizedBox(
                      height: 5.h,
                    ), //SizedBox
                   
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
    ),
         ],
       ),
     ),
       SizedBox(
                    height: 90.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0.w),
                    child: ElevatedButton(
                      child: Text(
                        "Save & Continue",
                        style: TextStyle(color: Colors.blue),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: Size(191.w, 30.h),
                          backgroundColor: Colors.white,
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, Myroutes.bankroute);
                      },
                    ),
                  ),
  
                ],
               
              ),
        ),

           drawer: Mydrawer(),
        bottomSheet: BottomBar(),
        ),

       
      );
    
  }
}
      
    