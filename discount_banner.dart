
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(horizontal: 20),
     padding: EdgeInsets.symmetric(
       horizontal: 20,
       vertical: 15
     ),
     width: double.infinity,    
     decoration: BoxDecoration(       
       color: Colors.amberAccent,
       borderRadius: BorderRadius.circular(20)
     ),
     child: Text.rich(
       TextSpan(text: "تخفيضات الصيف\n",
       style: TextStyle(color: Colors.white),
       children: [
         TextSpan(
           text: "خصومات تصل الى  %30",
           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
         )
       ]
       )

     ),

    );
  }
}
