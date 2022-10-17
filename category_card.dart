

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,
   required this.svgSrc, 
   required this.title, 

   });
  final String svgSrc;
  final String title;


  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Container(
                
               width: 200,
               height: 300,
                   padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,17),
                blurRadius: 17,
                spreadRadius: -13,
             
              ),
            ],
                    ), 
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      children: <Widget>[
                        
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style:Theme.of(context)
                            .textTheme.headline6!
                            .copyWith(fontSize:17),
                    
                        ),
                      
                          Image.asset(svgSrc, ),
                  
                      ],
                    
                    ),
                  ),
                  ),
      
    );
  }
}