import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import 'package:zopnote/utls/widgets/bottomcards.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route.dart';


class Generaldetails1 extends StatefulWidget {
  

  @override
  _Generaldetails1State createState() => _Generaldetails1State();
}

class _Generaldetails1State extends State<Generaldetails1> {
     movetohome(BuildContext context) async {
    
      
      await Navigator.pushNamed(context, Myroutes.storeroute);
     
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xf2E5E5E5),
        resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
           
            children: [
            
              Center(
                child:  Image.asset(
                  "assets/images/zopnote-logotyp.png",
                  width: 138.w,
                   height: 138.h,
                  
                  ),
         
                 
                
              ),
           
          Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 39.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          
                          labelText: '*Enter Business Owner Name:',
                          labelStyle: TextStyle(
                            color: fromCssColor("rgba(17, 30, 108, 1)"),
                            fontSize: 18.sp,fontFamily: 'lato',
                              fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,

                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 19.h,),
         Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 39.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          
                          labelText: '*Enter Your Business Name:',
                          labelStyle: TextStyle(
                            color: fromCssColor("rgba(17, 30, 108, 1)"),
                            fontSize: 18.sp,fontFamily: 'lato',
                              fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,

                          )
                        ),
                      ),
                    ),
                     SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 39.0.w),
                      child: TextField(
                        onTap: (){
                            _bottomSheet(context);
                        },
                        
                      
                        decoration: InputDecoration(
                          
                          labelText: '*Select primary catagory:',
                          labelStyle: TextStyle(
                            color: fromCssColor("rgba(17, 30, 108, 1)"),
                            fontSize: 18.sp,fontFamily: 'lato',
                              fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,

                          )
                        ),
                      ),
                    ),
                     SizedBox(height: 19.h,),
          //  Padding(
          //    padding:  EdgeInsets.symmetric(horizontal: 50.0.w),
          //   child: TextFormField(
          //     onTap: (){
          //       _bottomSheet(context);
          //     },
          //     decoration:  InputDecoration(
          //       hintText: '',
          //       hintStyle: TextStyle(height:5.h, fontWeight: FontWeight.bold, fontSize: 20.sp,color: Colors.blue),
          //       labelText: '*Enter your Business Name',
          //       labelStyle: TextStyle(height:5.h, fontWeight: FontWeight.bold,fontSize: 25.sp,color: Colors.black),
          //     ),
          //   ),
          // ),
    
            ],),
        )
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
              Card1.cardwidget(
                
              ),
              SizedBox(
                width: 30.w,
              ),
              Card2.cardwidget1(),
              SizedBox(
                width: 30.w,
              ),
              Card3.cardwidget2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomwidget6() {
    return InkWell(
      onTap: () => movetohome(context),
      child: Container(
      
       
    
    
    
        
        child: Padding(
          padding:  EdgeInsets.only(
            left: 20.0.w,
          ),
          child: Row(
            children: [
              Card4.cardwidget3(),
              SizedBox(
                width: 30.w,
              ),
              Card5.cardwidget4(),
              SizedBox(
                width: 30.w,
              ),
              Card6.cardwidget5(),
            ],
          ),
        ),
      ),
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
          _bottomwidget6(),
          ],
        ),
        
     
    );
    
    });
}
}