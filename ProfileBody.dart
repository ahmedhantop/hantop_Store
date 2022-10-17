import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
import 'package:hantop_store_app/hantopstore/splash/splash.dart';

import 'profile_pic.dart';
import 'profile_menu.dart';

class ProfileBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child:
      Column(
      children: [
        SizedBox(height: 16,),
        ProfilePic(),
        SizedBox(height: 18,),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text:  "حساببي",
          press: (){
        
          },
        ),  ProfileMenu(
          icon: "assets/icons/receipt.svg",
          text:  "طلباتي",
          press: (){},
        ),  ProfileMenu(
          icon: "assets/icons/notification.svg",
          text:  "محفظتي ",
          press: (){},
        ),  ProfileMenu(
          icon: "assets/icons/remove.svg",
          text:  "تسجيل الخروج",
          press: (){
            usercartDetails.clear();
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>            
        SplashScreen()
            )
            );
      
          },
        ),
      ],
    )
    );
  }
}

