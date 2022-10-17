import 'package:flutter/material.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({super.key, required this.text, required this.image});
  final String text ,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "متجر أبوحريرة",
          style: TextStyle(
            fontSize: 36,
            color:Colors.amberAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          text,
          textAlign:TextAlign.center,
        ),                  
        Spacer(flex: 2),                    
        Image.asset(
        image,
          height: 256,
          width:235,
          ),
      ],
    );
  }
}