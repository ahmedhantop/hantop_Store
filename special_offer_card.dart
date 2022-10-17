
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/home/special_0ffer_card.dart';
import 'package:hantop_store_app/hantopstore/notyet_screen.dart';
import 'package:hantop_store_app/hantopstore/screens/allProjects/allcategories.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/miss_rose_home.dart';
import 'package:hantop_store_app/hantopstore/screens/red/red_store_home.dart';
import 'package:hantop_store_app/hantopstore/widgets/section_title.dart';
import 'package:hantop_store_app/hantopstore/screens/tyap/teyap_home.dart';

class Special0fferCard extends StatelessWidget {
  const Special0fferCard({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [      
       SectionTitle(
     text1: 'قم بزيارة متجرنا واستمتع ', 
     text2: 'كل المنتجات',
     press: (){
        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            AllCategories()
                          
                             ),
        );
     }
    ),
    SizedBox(),
    SizedBox(height: 20,),
        SingleChildScrollView(
         scrollDirection:Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 20,)  ,
              
              InkWell(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            TeyapPage()
                         
                             ),
                            );
                },
                child: SpecialOverCard(
                
                 category:  "ثياب بأنواعها",
                 image: 'assets/images/tyap/01.jpeg',
                 numofBrand: 10,
                ),
              ),
               
              
              InkWell(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            RedStoreHomePage()
                             ),
                            );
                },
                child: SpecialOverCard(
          
                 category:  "ملبوسات",
                 image: 'assets/images/red/image1.png',
                 numofBrand: 8,
                ),
              ),
              InkWell(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                             MissRoseHomePage()
                             ),
                            );
                },
                child: SpecialOverCard(
                 
                   category:  "منتجات مس روز",
                   image: 'assets/images/missrose/m_logo.jpg',
                   numofBrand: 8,
                  ),
              ),
              
              SizedBox(width: 10,)  ,
              InkWell(
                onTap: () {
                                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                             ),
                            );
                },
                child: SpecialOverCard(
              
                 category:  "شيلة عروس ",
                 image: 'assets/images/tyap/full.jpg',
                 numofBrand: 8,
                ),
              ),        
            ],
          ),
        ),
      ],
    );
  }
}
