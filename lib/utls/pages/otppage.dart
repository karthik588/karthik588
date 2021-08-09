import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route.dart';

class Otppage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf2E5E5E5),
        resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:Column(
          children: [
           SizedBox(height: 35.h,),
              Expanded(
                child: Image.asset(
                  "assets/images/zopnote-logotyp.png",
                  width: 138.w,
                   height: 138.h,
                  
                  ),
              ),
         
     SizedBox(height: 10.h,),
             Image.asset(
               "assets/images/namasthe1.png",
               width: 120.w,
                height:96.h,
               ),
              
             SizedBox(height: 30.h,),
           new Text("Enter Your OTP",
                style: TextStyle(
                  fontFamily: 'lato',
                
                  color: fromCssColor("  rgba(17, 30, 108, 1)"),
                  
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                )),
                new Text("Please Enter 4 Digit code we Sent to you",
                style: TextStyle(
                  fontFamily: 'lato',
                
                  color: fromCssColor("  rgba(17, 30, 108, 1)"),
                  
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                )),
                 SizedBox(height: 20.h,),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
           child: OTPTextField(
    length: 4,
    width: MediaQuery.of(context).size.width,
    fieldWidth: 20,
    style: TextStyle(
    fontSize: 16.sp
    ),
    textFieldAlignment: MainAxisAlignment.spaceEvenly,
    fieldStyle: FieldStyle.underline,
    onCompleted: (pin) {
    print("Completed: " + pin);
    },
    ),
         ),
             SizedBox(height: 10.h,),
          RichText(
            textAlign: TextAlign.center,
           text: TextSpan(
             
             style: TextStyle(
               color: fromCssColor("  rgba(0, 0, 0, 0.6)"),
               
             ),
            children: [
              TextSpan(text: "Didn't Recieve OTP? Click Below", style: TextStyle(fontWeight:  FontWeight.w300, fontSize: 9.sp),),
               TextSpan(text: "\n Resend OTP ",
              
               style: TextStyle(fontWeight:  FontWeight.w800, fontSize: 12.sp,color: fromCssColor("rgba(239, 70, 79, 1)"),

               
                ),),
               
    
            ] ) ,
         
         ),
         
          
               SizedBox(height: 40.h,),
                Padding(
                  padding:  EdgeInsets.only(left:10.0.w),
                  child: ElevatedButton(
                          child: Text( "Verify" ),
                          
                          style: TextButton.styleFrom( minimumSize:Size(191.w,30.h),
                           backgroundColor:fromCssColor (" rgba(17, 30, 108, 1)"),
                           textStyle: TextStyle(
                             fontSize: 18.sp,
                             fontWeight: FontWeight.bold,
                           )
                           
    
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, Myroutes.generaldetails1route);
                          },
                        ),
                ),
                SizedBox(height: 30.h,),
           new Text("Sign Up Using:",
                style: TextStyle(
                  fontFamily: 'lato',
                
                  color: fromCssColor(" rgba(0, 0, 0, 1)"),
                  
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                )),
                SizedBox(height: 10.h,),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                   
                        Container(
              //              width:28.w,
              // height: 28.h,
                          child: SignInButton(
                Buttons.Facebook,
                mini: true,
               
                onPressed: () {},
            ),
          
                        ),
                         SizedBox(width: 10.w, ), Center(
                           child: Container(
             
               child: Image.asset("assets/images/google.png",height: 100.h,width: 30.w, ),
              ),
            ),
                         
                     ],
                   ),
                
           
                  SizedBox(height: 5.h,),
                Padding(
    padding:EdgeInsets.symmetric(horizontal:10.0.w),
    child:Container(
    height:1.0.h,
    
    color:Colors.black,),),
    SizedBox(height: 10.h,),
    
         Expanded(
           child: RichText(
              textAlign: TextAlign.center,
             text: TextSpan(
               
               style: TextStyle(
                 color: fromCssColor("  rgba(17, 30, 108, 1)"),
                 
               ),
              children: [
                TextSpan(text: "By logging in, you agree to our",style: TextStyle(fontSize: 11.sp ),),
                 TextSpan(text: " Terms and Condition ",
                
                 style: TextStyle(fontWeight:  FontWeight.w500, fontSize: 11.sp
                 
                  ),),
                 TextSpan(text: "and",style: TextStyle(fontSize: 11.sp ),),
                 TextSpan(text: "\n Privacy Policy.",style: TextStyle(fontWeight:  FontWeight.w500,fontSize: 11.sp ),),
             
              ] ) ,
           
           ),
           
         ),
        
         
    
          ],)
      ),
    );
      
    
  }
}

