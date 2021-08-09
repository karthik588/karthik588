import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../route.dart';

class Mappage extends StatefulWidget {
  @override
  _MappageState createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            resizeToAvoidBottomInset: false,
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
              children:[ Container(
                child: Column(
              children: [
                new LinearPercentIndicator(
                  lineHeight: 5.0,
                  percent: 0,
                  backgroundColor: Colors.grey[500],
                  progressColor: Colors.blue,
                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w),
                      child: Text(
                        "Enter Your Store Location ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff111e6c),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                color: fromCssColor("rgba(255, 255, 255, 1)"),
                    height: 30.h,
                    alignment: Alignment.topLeft,
                    child: TextFormField(
                      
                      textAlign: TextAlign.start,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                       
                        border: const OutlineInputBorder(),
                        labelText: "Use Live Location"),
                      ),
                    ),
                  ),
                
                SizedBox(height: 10.h),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                  child: Container(
                    height: 163.h,
                    width: 315.w,
                    child: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
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
                        labelText: '*House Number/Building Number',
                        labelStyle: TextStyle(
                          fontSize: 16.sp,
                          color: fromCssColor("rgba(0, 0, 0, 1)")
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '*Streeet Name',
                        labelStyle: TextStyle(
                          fontSize: 16.sp,
                          color: fromCssColor("rgba(0, 0, 0, 1)")
                        )),
                    ),
                  ),
                
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Landmark",
                        labelStyle: TextStyle(
                          fontSize: 16.sp,
                          color: fromCssColor("rgba(0, 0, 0, 1)")
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Pincode",
                        labelStyle: TextStyle(
                          fontSize: 16.sp,
                          color: fromCssColor("rgba(0, 0, 0, 1)")
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0.w,
                    ),
                    new Flexible(
                      child: new TextField(
                          decoration: InputDecoration(
                              labelText: "*City", labelStyle: TextStyle(
                          fontSize: 16.sp,
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
                              labelText: "*state", labelStyle: TextStyle(
                          fontSize: 16.sp,
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
                      Navigator.pushNamed(context, Myroutes.kycroute);
                    },
                  ),
                ),
              ],
                ),
              ),
              ])));
  }
}
