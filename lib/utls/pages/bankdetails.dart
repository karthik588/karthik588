import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:zopnote/utls/widgets/bottombar.dart';
import 'package:zopnote/utls/widgets/drawer.dart';

import '../route.dart';
class Bankdetailspage extends StatefulWidget {


  @override
  
  _BankdetailsState createState() => _BankdetailsState();
}

class _BankdetailsState extends State<Bankdetailspage> {
bool priceupdate_value = false;
bool priceupdate_value1 = false;
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
        body: ListView(
          children:[ Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                Column(
                  children: [
                   new LinearPercentIndicator(
                lineHeight: 5.0,
                percent: 0.5,
                backgroundColor: Colors.grey[500],
                progressColor: Colors.blue[800],
                ),
                  ],
                
                ),
                    SizedBox(height: 15.h,),
               new Text("Add Bank Details",
                    style: TextStyle(
                      fontFamily: 'lato',
                      color: fromCssColor("  rgba(17, 30, 108, 1)"),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                    )),
                     SizedBox(height: 20.h,),
                SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '*Enter Account Holders Name ',labelStyle: TextStyle(
                             color: fromCssColor("rgba(0, 0, 0, 1)"),
                             fontSize: 16.sp,
                             fontFamily: 'lato',
                             fontWeight: FontWeight.w400,
                          )
                        ),
                      ),
                    ),
                      SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '*Enter Account Number',labelStyle: TextStyle(
                             color: fromCssColor("rgba(0, 0, 0, 1)"),
                             fontSize: 16.sp,
                             fontFamily: 'lato',
                             fontWeight: FontWeight.w400,
                          )
                        ),
                      ),
                    ),
                      SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '*Enter Ifse Code',labelStyle: TextStyle(
                             color: fromCssColor("rgba(0, 0, 0, 1)"),
                             fontSize: 16.sp,
                             fontFamily: 'lato',
                             fontWeight: FontWeight.w400,
                          )
                        ),
                      ),
                    ),
                      SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '*Enter Registered Number',labelStyle: TextStyle(
                             color: fromCssColor("rgba(0, 0, 0, 1)"),
                             fontSize: 16.sp,
                             fontFamily: 'lato',
                             fontWeight: FontWeight.w400,
                          )
                        ),
                      ),
                    ),
                     
                   
            CheckboxListTile(
              title: Text("Add My Wallet Details"),
              controlAffinity: ListTileControlAffinity.leading,
              value: priceupdate_value,
               onChanged: (bool? aValue) {
                setState(() {
                  priceupdate_value =aValue!;
                });
              },
            ),
            
            
                   
                   
        
                     if (priceupdate_value)
                     
                     _extra(),
                     
                    
                       SizedBox(
                      height: 10.h,
                    ),
                     if (priceupdate_value)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '*enter Wallet Number',
                        ),
                      ),
                    ),
                     if (priceupdate_value)
                    CheckboxListTile(
              title: Text("More wallets"),
              controlAffinity: ListTileControlAffinity.leading,
              value: priceupdate_value1,
               onChanged: (bool? bValue) {
                setState(() {
                  priceupdate_value1 =bValue!;
                });
              },
            ),
                    if (priceupdate_value1)
                      if (priceupdate_value)
                    _extra(),
                       if (priceupdate_value1)
                         if (priceupdate_value)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '*enter Wallet Number',
                        ),
                      ),
                    ),
             
               SizedBox(
                      height: 10.h,
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
                          Navigator.pushNamed(context, Myroutes.sitroute);
                        },
                      ),
                    ),
          
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
  Widget _extra(){
    return  Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         SizedBox(width: 5.w,),
                         OutlinedButton(
                           onPressed: () {},
                            child:Text("Gpay"),
                             ),
                            
                             OutlinedButton(
                           onPressed: () {},
                            child:Text("Patym") ),
                            OutlinedButton(
                           onPressed: () {},
                            child:Text("BHIM") ),
                            OutlinedButton(
                           onPressed: () {},
                            child:Text("Phonepay") ),
                             SizedBox(width: 5.w,),
                       ],
                     ),
                   );
  }
}
      
    