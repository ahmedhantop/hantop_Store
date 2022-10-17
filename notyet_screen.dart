

import 'package:flutter/material.dart';

class MyTestHomePage extends StatelessWidget {
  const MyTestHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
       Center(
         child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
           children: [
            SizedBox(height: 90,),
            Image.asset("assets/images/missrose/app-store.png"),
            SizedBox(height: 60,),
             Text('مع الأسف ... لسة شوية على الصفحة دي ',
             style: TextStyle(color: Colors.blueAccent,fontSize: 20),), 
               SizedBox(height: 20,),
             Text('مع الأسف ... لسة شوية على الصفحة دي ',
      style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
        SizedBox(height: 20,),
       Text('مع الأسف ... لسة شوية على الصفحة دي ',
      style: TextStyle(color: Colors.black,fontSize: 20),),
        SizedBox(height: 20,),
       Text('مع الأسف ... لسة شوية على الصفحة دي ',
      style: TextStyle(color: Colors.redAccent,fontSize: 20),),
        SizedBox(height: 20,),
       Text('مع الأسف ... لسة شوية على الصفحة دي ',
      style: TextStyle(color: Colors.amberAccent,fontSize: 20),),
           ],
         ),
       )
    
    
    );
  }
}