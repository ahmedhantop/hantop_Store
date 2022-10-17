import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
import 'package:hantop_store_app/hantopstore/my_cart/mycart.dart';
import 'package:hantop_store_app/hantopstore/profile/profile_screen.dart';
import 'package:hantop_store_app/hantopstore/widgets/section_title.dart';
import 'package:hantop_store_app/hantopstore/widgets/icon_btn_with_count.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           SizedBox(width: 20,),

        Row(
          children: [
  GestureDetector(
    onTap: (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: ((context) => ProfileScreen())
      )
      );
    },
               
    child: Container(
      height:45 ,
      width: 39,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
      image:
      AssetImage("assets/images/Profile Image.png")
      )
      ),
    ),
  ),

        SizedBox(width: 33,),
            IconBtnWithCounter(
              svgSrc: 'assets/icons/Bell.svg',
              numitem:5,
              press: (){},
            ),
          ],
        ),
        
        SizedBox(width: 20,),
          Row(
            children: [
              SectionTitle(
          text1:'',
        text2: 'سلتي ', 
        press: (){
          },
        ),
          SizedBox(width: 10,),
              IconBtnWithCounter(
              svgSrc: 'assets/icons/Cart Icon.svg',
              numitem:usercartDetails.length,
              press: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>
                MyChart(),
                )
                );
              },
        ),
          SizedBox(width: 15,),
            ],
          ),
        
      ],
      ),
    );
  }
}
