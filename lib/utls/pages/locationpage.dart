import 'dart:async';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import 'package:percent_indicator/percent_indicator.dart';
// import 'package:status_change/status_change.dart';

import 'package:zopnote/utls/pages/map.dart';
import 'package:zopnote/utls/widgets/bottombar.dart';
import 'package:zopnote/utls/widgets/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../route.dart';

class Locationpage extends StatefulWidget {
  const Locationpage({Key? key}) : super(key: key);

  @override
  _LocationpageState createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {

  @override
   void initState(){
    super.initState();
    // Timer(Duration(seconds: 3),() => Navigator.push(context,  MaterialPageRoute(builder:(context) => Mappage(),)));
  }
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  tapped(int step){
  setState(() => _currentStep = step);
}

  continued(){
  _currentStep < 2 ?
      setState(() => _currentStep += 1): null;
      Navigator.push(context,  MaterialPageRoute(builder:(context) => Mappage(),));
}
cancel(){
  _currentStep > 0 ?
      setState(() => _currentStep -= 1) : null;
}
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

        body: Column(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      
                      height: 300.h,
                      width: double.infinity,
                     color: fromCssColor(" rgba(200, 231, 224, 1)"),
                      child: Padding(
                        padding:  EdgeInsets.only(top:20.0.h),
                        child: Column(
                          children: [
                            new CircularPercentIndicator(
                              arcType:ArcType.HALF ,
                    radius: 120.0.sp,
                    lineWidth: 6.0.h,
                    percent: .35,
                   
                    center:  new Text("35%\n", style: TextStyle(
                      fontSize: 16.sp,fontWeight: FontWeight.bold
                    ),),
                    backgroundColor:fromCssColor("rgba(229, 229, 229, 1)") ,

                    progressColor:       Color(0xff111e6c),
                  ),
                      Padding(
                        padding:  EdgeInsets.only(top:0.0),
                        child: Text("Store setup is Completed! ",textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                    ),
                    ),
                      ),
                    SizedBox(height:10.h),
                     Text("Finish the step to unlock the feature ",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff111e6c),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                    ),
                     
                     
          
                          ],
                      ),
                    ),
                  
                
                    ),
                  
                    _progresswidget(),
                  ]
                ),
              ],
            ),
  
          ],
        ),

        drawer: Mydrawer(),
        bottomSheet: BottomBar(),
      ),
    );
  }

 Widget _progresswidget(){
   return  Padding(
     padding:  EdgeInsets.only(top:180.h),
     child: Container(
      
       height: 320.h,
       width: 300.w,
       child:  Card(
         color: fromCssColor(" rgba(255, 255, 255, 1)"),
         child:Padding(
           padding:  EdgeInsets.only(top:15.0.h),
           child: Stepper(
              type: stepperType,
                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue:  continued,
                  onStepCancel: cancel,
             
             steps: [

             Step( isActive: _currentStep >= 0,
               state: _currentStep >= 0 ?
              StepState.complete : StepState.disabled,

             
               title:  Text("Create Digital Store",style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),),
                       content: Text(""),
                      subtitle: Text("Congratulations. You have a digital\nstore now. Won’t you like to access its\nfull feature? Go Ahead.",
                     style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,) ),
                      // state:StepState.complete
             ),Step(
               
              
                 isActive: _currentStep >= 0,
                state: _currentStep >= 1 ?
                StepState.complete : StepState.disabled,
                

             
               title:  Text("Add Details",style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),),
                       content: Text(""),
                      subtitle: Text("Add your details for full transparency\nand trust. There are exciting features\nwaiting for you..",
                     style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,) ),
                    
             ),Step( isActive: false,
                //    state: _currentStep >= 2 ?
                //  StepState.complete : StepState.disabled,

             
               title:  Text("Add Customers",style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),),
                       content: Text(""),
                      subtitle: Text("Final Call. Add customers and enjoy\nyour store.",
                     style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff111e6c),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,) ),
                        
             ),
             
           ]

           
           ),
         )
       ),
             
     ),
   );
 }
}
