
import 'package:flutter/material.dart';

class SpecialOverCard extends StatelessWidget {
  const SpecialOverCard({
    Key? key, 
    required this.category, 
    required this.image, 
    required this.numofBrand, 
   
  }) : super(key: key);

  final String category , image;
  final int numofBrand;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:20),
      child: SizedBox(
       height: 140,
       width: 100,
       child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
       child: Stack(
         children: [
 Image.asset(image,
         fit: BoxFit.cover,
         ),
         Container(        
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,        
               colors:[ 
                 Color(0xFF343434).withOpacity(0.4),
                 Color(0xFF3434343).withOpacity(0.15)
         ]
           ),
           ),
         ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 8.0),
           child: Text.rich(
             TextSpan(
             style:TextStyle(color: Colors.white),
             children: [
               TextSpan(                      
             text:"$category \n",
           style: TextStyle(fontSize: 15,        
           )
           ),        
             ]
               ),
           ),
         ),
         ],       
       ),
       ),
       ),
    );
  }
}
