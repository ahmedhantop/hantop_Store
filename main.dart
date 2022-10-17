import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/rounded_icon_btn.dart';
//import 'package:hantop_store_app/hantopstore/profile/profile_screen.dart';
import 'package:hantop_store_app/hantopstore/splash/splash.dart';
import 'package:hantop_store_app/payment/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 localizationsDelegates: [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: [
    Locale("en", "US"),
     Locale("ar", "SA"),
     // OR Locale('ar', 'AE') OR Other RTL locales
  ],
  locale: Locale("ar", "SA") ,// OR Locale('ar', 'AE') OR Other RTL locales,
  

      home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property 
        child:
        //PaymentScreen(),
  SplashScreen()
        //MyChart()
        //TyapDetails()
        //SplashScreen(),
        //child: DetailsScreen(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'متجر أبوحريرة',
    );
  }
}
