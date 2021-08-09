import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';

import 'package:zopnote/utls/widgets/bottombar.dart';
import 'package:zopnote/utls/widgets/drawer.dart';

// import 'package:zopnote/utls/widgets/bottomcards.dart';

import '../route.dart';

class Addcustomerpage extends StatefulWidget {
  @override
  _AddcustomerpageState createState() => _AddcustomerpageState();
}

class _AddcustomerpageState extends State<Addcustomerpage> {
  movetohome(BuildContext context) async {
    
      
      await Navigator.pushNamed(context, Myroutes.addcustomerroute);
     
    }

 
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[200],

        //  extendBodyBehindAppBar: true,
        extendBody: true,

        appBar: AppBar(
          backgroundColor: fromCssColor(" rgba(200, 231, 224, 1)"),
            elevation: 0.h,
            actions: [
            // action button
            IconButton(
              icon: Icon( Icons.account_circle,size: 30.sp, ),
              onPressed: () { },
            ),
            ],
            centerTitle: true,
            title: Text(
              "Home Needs",
              style: TextStyle(color: fromCssColor("rgba(17, 30, 108, 1)"), fontSize: 16.sp),
            
            ),
            // leading:Icon(Icons.account_circle)  ,),
        ),

        body: ListView(
          children:[ Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                 
                SizedBox(height: 10.h,),
                 new Text("Customer Details",
                      style: TextStyle(
                        fontFamily: 'lato',
                        color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                      )),
                    
                  SizedBox(
                        height: 10.h,
                      ),
                      ElevatedButton(
                            child: Text( "Import Contacts from Phone/ Drive >" ,style:TextStyle(
                             color: fromCssColor("rgba(17, 30, 108, 1)"),
                            ) ,),
                            
                            style: TextButton.styleFrom( minimumSize:Size(302.w,25.h),
                             backgroundColor:fromCssColor ("  rgba(255, 255, 255, 0.7)"),
                             textStyle: TextStyle(
                             
                               fontSize: 12.sp,
                               fontWeight: FontWeight.bold,
                             )
                             
    
                            ),
                            onPressed: () {
                              _bottomSheet(context);
                            },
                          ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Ghrahak Name ',labelStyle: TextStyle(
                              fontFamily: 'lato',
                              color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                            ) 
                            
                          ),
                        ),
                      ),
                        SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Ghrahak Phone Number',labelStyle: TextStyle(
                              fontFamily: 'lato',
                              color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 16.sp,
                       fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                            ) 
                          ),
                        ),
                      ),
                        SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Ghrahak Address',labelStyle: TextStyle(
                              fontFamily: 'lato',
                              color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                            ) 
                          ),
                        ),
                      ),
                        SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Street Name',labelStyle: TextStyle(
                              fontFamily: 'lato',
                              color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                            ) 
                          ),
                        ),
                      ),
                       Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Landmark',labelStyle: TextStyle(
                              fontFamily: 'lato',
                              color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                            ) 
                          ),
                        ),
                      ),
                       Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'pin code',labelStyle: TextStyle(
                              fontFamily: 'lato',
                              color: fromCssColor("  rgba(0, 0, 0, 1)"),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                            ) 
                          ),
                        ),
                      ),
                       
                      new Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 20.0.w,
                        ),
                        new Flexible(
                          child: new TextField(
                              decoration: InputDecoration(
                                  labelText: "City", labelStyle: TextStyle(
                              fontSize: 11.sp,
                              color: fromCssColor("rgba(0, 0, 0, 1)")
                            ),
                                  contentPadding: EdgeInsets.all(10.sp))),
                        ),
                        SizedBox(
                          width: 50.0.w,
                        ),
                        new Flexible(
                          child: new TextField(
                              decoration: InputDecoration(
                                  labelText: "state", labelStyle: TextStyle(
                              fontSize: 11.sp,
                              color: fromCssColor("rgba(0, 0, 0, 1)")
                            ),
                                  contentPadding: EdgeInsets.all(5.sp))),
                        ),
                        SizedBox(
                          width: 20.0.w,
                        ),
                      ],
                    ),
             
              
                     
                    
                      
                       
                     
                     
                 SizedBox(
                        height: 20.h,
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
                           Navigator.pushNamed(context, Myroutes.searchroute);
                          },
                        ),
                      ),
            
                    ],
                   
                  ),
            ),
          ),
          ],
        ),

           drawer: Mydrawer(),
        bottomSheet: BottomBar(),
        ),

       
      );
    
  }
   Widget _bottomwidget5() {
    return InkWell(
      onTap: () => movetohome(context),
      child: Container(
       
       
        child: Padding(
          
          padding:  EdgeInsets.only(
            left: 20.0.w,top:20.h
          ),
          child: Row(
            children: [
             _bmcardwidget()
             
            ],
          ),
        ),
      ),
    );
  }
  Widget _bmcardwidget(){
    return Column(
      children: [
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 50.w),
         child: Text("Add Customers from your contacts\n754 Contacts",textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 16.sp,
           fontFamily: 'lato',
           fontWeight: FontWeight.w700,
           color: fromCssColor("rgba(17, 30, 108, 1)")
         ),),
       ),
       Row(
         children: [],

       )
          
        
      ],
    );
  }
   _bottomSheet(context){
  showModalBottomSheet(shape:RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
   
    context: context, builder:(BuildContext c){
      
      return Container(
       
        height: 280.h,
        
          
        
        child: Column(
          
  
          children: [
              _bottomwidget5(),
              SizedBox(height: 50.h,),
         
          ],
        ),
        
     
    );
    
    });
}
  }
