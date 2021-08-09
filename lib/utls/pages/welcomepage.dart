import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<PageViewModel> getpages() {
    return [
      
      PageViewModel(
        image: Image.asset(
          "assets/images/welcome1.png",
          height: 315.h,
          width: 305.w,
        ),
        title: 'Feature',
        body: "",
        footer: Text(""),
      ),

      PageViewModel(
        image: Image.asset(
          "assets/images/wecome2.png",
          height: 955.h,
          width: 245.w,
        ),
        title: 'What User Say?',
        body:"",
        footer: Text(""),
      ),

      PageViewModel(
        image: Image.asset(
          "assets/images/welcome3.png",
          height: 315.h,
          width: 245.w,
        ),
        title: "Feature" ,
        body: "",
        footer: Text(""),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          backgroundColor: Colors.white,
            body:SafeArea(
              child: Column(children: [
                 Image.asset(
                  "assets/images/zopnote-logotyp.png",
                  width: 138.w,
                   height: 138.h,
                 ),
                
                
                SizedBox(height: 10.h),
                Expanded(
                  child: IntroductionScreen(
                  globalBackgroundColor: Colors.white,
                      pages: getpages(),
                      onDone: () {
                       Navigator.pushNamed(context, Myroutes.mobregisterroute);
                      },
                      showSkipButton: true,
                      showNextButton: false,
                      skip: const Text("Skip"),
                      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
                      dotsDecorator: DotsDecorator(
                          size: const Size.square(10.0),
                          activeSize: const Size(20.0, 10.0),
                          activeColor: Colors.blue,
                          color: Colors.black26,
                          spacing: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 100.0),
                          activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.sp))),
                    ),
                )
            
              ],),
            ) 
    )
    );
  }
}
