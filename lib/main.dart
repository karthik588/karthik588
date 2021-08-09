import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zopnote/utls/pages/addcustomer.dart';
import 'package:zopnote/utls/pages/addprofilelast.dart';
import 'package:zopnote/utls/pages/bankdetails.dart';
import 'package:zopnote/utls/pages/dashboard.dart';
import 'package:zopnote/utls/pages/generaldetails1.dart';
import 'package:zopnote/utls/pages/kyc.dart';
import 'package:zopnote/utls/pages/locationpage.dart';
import 'package:zopnote/utls/pages/map.dart';
import 'package:zopnote/utls/pages/mobregister.dart';
import 'package:zopnote/utls/pages/orderpage.dart';
import 'package:zopnote/utls/pages/otppage.dart';
import 'package:zopnote/utls/pages/searchcustomer.dart';
import 'package:zopnote/utls/pages/sitandrelax.dart';
import 'package:zopnote/utls/pages/splashscreen.dart';
import 'package:zopnote/utls/pages/store.dart';
import 'package:zopnote/utls/pages/storefront.dart';
import 'package:zopnote/utls/route.dart';
// import 'package:zopnote/utls/widgets/bottomcards.dart';


void main() {
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(MyApp()); 
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,  640),
      builder: () =>MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
      primarySwatch: Colors.deepPurple,
       ),
      
      darkTheme:ThemeData(brightness:Brightness.light

      ),
      debugShowCheckedModeBanner: false,
      routes: {
       
          "/": (context) =>SplashScreen(),
           Myroutes.mobregisterroute:(context) => Mobregister(),
           Myroutes.otppageroute:(context) => Otppage(),
          Myroutes.generaldetails1route:(context) => Generaldetails1(),
          Myroutes.storeroute:(context) => Store(),
          Myroutes.storefrontroute:(context) => StoreFront(),
          Myroutes.drawerroute:(context) => Drawer(),
           Myroutes.locationroute:(context) => Locationpage(),
             Myroutes.maproute:(context) => Mappage(),
              Myroutes.kycroute:(context) => Kycpage(),
                Myroutes.bankroute:(context) => Bankdetailspage(),
                  Myroutes.sitroute:(context) => Sitpage(),
                   Myroutes.lastlandingroute:(context) => Lastlandingpage(),
                   Myroutes.addcustomerroute:(context) => Addcustomerpage(),
                     Myroutes.searchroute:(context) => Searchcustomer(),
                       Myroutes.orderroute:(context) => Orderpage(),
                        Myroutes.dashroute:(context) => Dashboard(),
      },
    )
    );
  }
}