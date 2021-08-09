import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


import '../route.dart';

class Mobregister extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf2E5E5E5),
         resizeToAvoidBottomInset: false,
      
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
           
            children: [
             SizedBox(height: 20.h,),
              Expanded(
                child: Image.asset(
                  "assets/images/zopnote-logotyp.png",
                  width: 138.w,
                   height: 138.h,
                  
                  ),
              ),
                  
              Expanded(
                child: Image.asset(
                  "assets/images/namasthe1.png",
                  width: 120.w,
                   height:86.h,
                  ),
              ),
              SizedBox(height: 20.h,),
              
              Text("Enter your Mobile Number",
                  style: TextStyle(
                    fontFamily: 'lato',
                  
                    color: fromCssColor("  rgba(17, 30, 108, 1)"),
                    
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  )),
                  new Text("We will be using the number for verification",
                  style: TextStyle(
                    fontFamily: 'lato',
                  
                    color: fromCssColor("  rgba(17, 30, 108, 1)"),
                    
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
                   SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.only(left:5.w),
              child: Container(
                height: 70.h,
                width: 280.w,
                child: IntlPhoneField(autoValidate: true,

                decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                 
        
                ),
          
                initialCountryCode: 'IN',
                onChanged: (phone) {
                print(phone.completeNumber);
                },
        ),
              ),
            ),
                 SizedBox(height: 30.h,),
                  Padding(
                    padding:  EdgeInsets.only(left:10.w),
                    child: ElevatedButton(
                            child: Text( "Generate OTP",style: TextStyle(
                              color: fromCssColor(" rgba(17, 30, 108, 1)")
                            ), ),
                            
                            style: TextButton.styleFrom( minimumSize:Size(191.w,30.h),
                             backgroundColor:fromCssColor ("  rgba(240, 240, 243, 1)"),
                             textStyle: TextStyle(
                               fontSize: 16.sp,
                               fontWeight: FontWeight.bold,
                             )
                             
            
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, Myroutes.otppageroute);
                            },
                          ),
                  ),
                  SizedBox(height: 30.h,),
             new Text("Sign Up Using:",
                  style: TextStyle(
                    fontFamily: 'lato',
                  
                    color: fromCssColor("  rgba(0, 0, 0, 1)"),
                    
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                  )),
                  SizedBox(height: 20.h,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                   
                        Container(
                        
                          child: SignInButton(
                Buttons.Facebook,
                mini: true,
               
                onPressed: () {},
            ),
          
                        ),
                         SizedBox(width: 10.w, ), Center(
                           child: Container(
            
               child: Image.asset("assets/images/google.png",height: 100.h, width:30.w ),
              ),
            ),
                         
                     ],
                   ),
                    SizedBox(height: 20.h,),
             RichText(
              textAlign: TextAlign.center,
             text: TextSpan(
               
               style: TextStyle(
                 color: fromCssColor("  rgba(17, 30, 108, 1)"),
                 
               ),
              children: [
                TextSpan(text: "Already having an account?",style: TextStyle(fontSize: 11.sp ),),
                 TextSpan(text: " Login ",
                
                 style: TextStyle(fontWeight:  FontWeight.w800, fontSize: 11.sp
                 
                  ),),
                 
        
              ] ) ,
           
           ),
                    SizedBox(height: 30.h,),
                  Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0.h),
            child:Container(
            height:1.0.h,
            
            color:Colors.black,),),
            SizedBox(height: 20.h,),
        
           RichText(
              textAlign: TextAlign.center,
             text: TextSpan(
               
               style: TextStyle(
                 fontSize: 11.sp,
                 color: fromCssColor("  rgba(17, 30, 108, 1)"),
                 
               ),
              children: [
                TextSpan(text: "By logging in, you agree to our",style: TextStyle(fontSize: 11.sp ),),
                 TextSpan(text: " Terms and Condition ",
                
                 style: TextStyle(fontWeight:  FontWeight.w500, fontSize: 11.sp
                 
                  ),),
                 TextSpan(text: "and",style: TextStyle(fontSize: 11.sp ),),
                 TextSpan(text: "\n Privacy Policy.",style: TextStyle(fontWeight:  FontWeight.w500, fontSize: 11.sp),),
        
              ] ) ,
           
           ),
           SizedBox(height: 20,),
            
            ],),
        ),
      ),
    );
      
    
  }
}

