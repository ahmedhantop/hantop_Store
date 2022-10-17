
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// //import 'package:missrose_app/auth_page.dart';
// import 'package:missrose_app/hantopstore/auth_page.dart';
// // import 'package:missrose_app/home.dart';

// class MainPage extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Theme.of(context).primaryColor,
//       body:StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context,snapshot)
//       {
//         if(snapshot.connectionState == ConnectionState.waiting){
//           return Center(child: CircularProgressIndicator());
//         }
//         else if(snapshot.hasError)
//         {
//           return Center(child: Text('Something went wrong'),);
//         }
//         else if(snapshot.hasData){
//           return AuthPage();
//           //HomePage();
//         }else{
//         return AuthPage();
//       }
//       },
//     ),
//     );
//       }
      
// }