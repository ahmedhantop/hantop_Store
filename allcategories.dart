//import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/notyet_screen.dart';
//import 'package:hantop_store_app/hantopstore/notyet_screen.dart';
import 'package:hantop_store_app/hantopstore/screens/allProjects/category_card.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/miss_rose_home.dart';
import 'package:hantop_store_app/hantopstore/screens/red/red_store_home.dart';
import 'package:hantop_store_app/hantopstore/screens/tyap/teyap_home.dart';
//import 'package:hantop_store_app/hantopstore/tyap/teyap_home.dart';

//import 'package:flutter_svg/flutter_svg.dart';
// import 'package:hantop_store/screens/allProjects/category_card.dart';
//import 'package:hantop_store/notyet_screen.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amberAccent.withOpacity(0.5)
      //      color: kBlueLightColor,
            //image: DecorationImage(
            //  image: AssetImage("assets/images/logo.jpg"),
              //fit: BoxFit.fitWidth,
            //),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:4),
            child: Column(
              //  height: double.infinity,
              crossAxisAlignment: CrossAxisAlignment.start,              
              children:<Widget>[
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    "كل المنتجات ",
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight:FontWeight.w900),
                    ),
                ),
                  SizedBox(height: 20,),
              
                
             
                  Expanded(
                    
                    child: GridView.count(
                        crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 10,
                      // crossAxisCount: 2,
                      // childAspectRatio: 0.65,
                      // crossAxisSpacing: 18,
                      // mainAxisSpacing: 12,
                      children: <Widget>
                      [  
                          
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            TeyapPage()
                             
                             ),
                            );
                },
                child:
                        CategoryCard(  
                        
                             
                     svgSrc: "assets/images/tyap/02.jpeg",
                    
                         title: "ثياب سودانية",   
                                           
                         
        ),
         ),
                        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            RedStoreHomePage()
                            
                             ),
                            );
                },
                child:
                                        CategoryCard(  
                          
                     svgSrc: "assets/images/red/product-1.jpg",
                     
                        title: "تيشيرتات شبابية",   
                                             
                        ),
                         ),
                         GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MissRoseHomePage()
                            
                             ),
                            );
                },
                child:

                        CategoryCard(  
                        
                     svgSrc: "assets/images/missrose/m_logo.jpg",
                  
                        title: "مس روز",                                                                                         
                         ),
        
                ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                            
                             ),
                            );
                },
                child:              
                    CategoryCard(
                          
                          svgSrc:"assets/images/red/lab_1.jpg",
                          title: 
                        
                          "لاب توبات محمولة",
                           
                                                
                        ),
                         ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                             
                             ),
                            );
                },
                child:
                        CategoryCard(
                        
                          svgSrc:"assets/images/red/image1.png",
                          title: 
                         
                          " ملبوسات رياضية ",    
                                                
                        ),
                         ),
      
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                            
                             ),
                            );
                },
                child:
  CategoryCard(  
    

                     svgSrc: "assets/images/tyap/full.jpg",
                  
                        title: " أطقم كاملة",    
                                                                      
                        ),
                         ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                 
                             ),
                            );
                },
                child:
 
                       CategoryCard(  
                        
                       svgSrc: "assets/images/red/abaya_1.jpg",
               
                          title: "عبايات خليجية",   
                                        
                          ),
 
                      ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                     
                             ),
                            );
                },
                child:
                         CategoryCard(  
                        
                     svgSrc: "assets/images/kids.jpg",
          
                        title: "أطفالي",   
                                          
                        ),
                         ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                      
                             ),
                            );
                },
                child:
                    
                    CategoryCard(
                      
                        svgSrc: "assets/images/red/child_.jpg",
                    
                          title: "أطقم جامعية ",                          
                                                 
                        ),
                         ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                      
                             ),
                            );
                },
                child:
                    
                    CategoryCard(
                 
                      svgSrc: "assets/images/red/bag_1.jpg",
                          title: "شنط شبابية",                          
                                            
                        ),
                         ),
        
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            MyTestHomePage()
                
                             ),
                            );
                },
                child:
                     
                    CategoryCard(
                     
                        svgSrc: "assets/images/red/product-10.jpg",
                          title: "أحذية رياضية",                          
                                             
                        ), 
                         ),
        GestureDetector(
                onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                    
                             MyTestHomePage()
                             ),
                            );
                },
                child:
                        
                           CategoryCard( 
                        
                                                 svgSrc: "assets/images/red/product-9.jpg",
                            title: "ساعات فاخرة", 
                            
    ),
     )
                    
                        ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}