import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zopnote/utls/route.dart';
import 'package:zopnote/utls/widgets/bottombar.dart';
import 'package:zopnote/utls/widgets/drawer.dart';
class Orderpage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBody: true,
         backgroundColor: Colors.grey[200],

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
        body:Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Text("Tashi Yadav-9880380564\nB-76,Vijaynagar,Bangalore",textAlign: TextAlign.center,style: 
              TextStyle(fontSize: 16.sp,
              fontFamily: 'lato',
              fontWeight: FontWeight.w700,
                color: fromCssColor(" rgba(17, 30, 108, 1)",
              ))

              ),
               SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 20.h),
                  child: Container(
                color: fromCssColor("rgba(255, 255, 255, 1)"),
                    height: 50.h,
                    alignment: Alignment.topLeft,
                    child: TextFormField(
                      minLines: 3,
                      maxLines: 5,
                      
                      textAlign: TextAlign.start,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        
                       
                        border: const OutlineInputBorder(),
                        labelText: "Add a new order"),
                      ),
                    ),
                  ),
                  Container(
                    height: 277.5,
                    width: 310.w,
                       
                    child: Card(
                      child: Padding(
                        padding:  EdgeInsets.only(left:8.0.w,top: 10.h),
                        child: Text("Previous Orders",
                        style: 
              TextStyle(fontSize: 16.sp,
              fontFamily: 'lato',
              fontWeight: FontWeight.w700,
                color: fromCssColor(" rgba(17, 30, 108, 1)",)),
                        
                        
                    ),
                      ),
                  ),
                  ),
                   SizedBox(
                        height: 20.h,
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w),
                        child: ElevatedButton(
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                              minimumSize: Size(191.w, 30.h),
                              backgroundColor: fromCssColor(" rgba(17, 30, 108, 1)"),
                              textStyle: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              )),
                          onPressed: () {
                           Navigator.pushNamed(context, Myroutes.dashroute);
                          },
                        ),
                      ),
            ],
          ),
        ),
          
        ),
            drawer: Mydrawer(),
        bottomSheet: BottomBar(),
      
    );
  }
}