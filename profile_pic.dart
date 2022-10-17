
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child:Stack(
        clipBehavior: Clip.none, fit: StackFit.expand,
        children:[
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            height: -12,
            width: 0,
            child:SizedBox(
              height:46,
              width:46,
            
            ),
          ),
        ],
      ),
    );
  }
}