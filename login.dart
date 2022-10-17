

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:missrose_app/hantopstore/const.dart';
// import 'package:missrose_app/hantopstore/utils.dart';
// //import 'package:missrose_app/const.dart';
// import 'package:missrose_app/main.dart';
// //import 'package:missrose_app/splash/splash.dart';
// //import 'package:missrose_app/utils.dart';
// //import 'package:missrose_app/main.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({
//     super.key, 
//   required this.onClickSignin});

//   final VoidCallback onClickSignin;

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
// final emailController = TextEditingController();
// final passwordController = TextEditingController();

// void dispose(){
//   emailController.dispose();
//   passwordController.dispose();
//   super.dispose();
// }


//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 80,),
//           //FlutterLogo(size: 125,),
//           Container(
//           width:180,
//             height: 120,
//             child: Image.asset("assets/images/splash_1.png",)),
//           SizedBox(height: 40,),
//           Text('Hi There , \n Wellcome ',
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize:32,fontWeight: FontWeight.bold,
//           color: kprimaryColor),
//           ),
//           SizedBox(height: 40,),
//           TextField(controller: emailController,
//           cursorColor: Colors.white,
//           textInputAction: TextInputAction.next,
//           decoration: InputDecoration(labelText:'Enter your Email Address' ),
//           ),
//           SizedBox(height: 4,),
//           TextField(controller: passwordController,
//           cursorColor: Colors.white,
//           textInputAction: TextInputAction.done,
//           obscureText: true,
//           decoration: InputDecoration(labelText:'Enter your password' ),
//           ),
//           SizedBox(height: 30,),
//           ElevatedButton.icon(
//             style: ElevatedButton.styleFrom(
//               minimumSize: Size.fromHeight(50),
//             ),
//             icon: Icon(Icons.lock_open,size: 30,),
//             label: Text('Login',
//             style: TextStyle(fontSize: 24,color: kprimaryColor),
            
//             ),
//             onPressed: signIn,
//           ),
//           SizedBox(height: 30,),
//         //
// //   GestureDetector(
// // child: Text(
// //   'Forget Password',
// //               style: TextStyle(
// //                 decoration: TextDecoration.underline,
// //                 color: Theme.of(context).colorScheme.secondary,
// //                 fontSize: 20
// //               ),
          
// //             ),
// //             onTap: () => Navigator.of(context).push(
// //               MaterialPageRoute(
// //               builder: (context) => SplashScreen()
// //               //ForgetPassword(),
// //             )  
// //             )

// //   ),
            
        
//         //
//           SizedBox(height: 24,),
//           RichText(text: TextSpan(
//             style: TextStyle(color: kprimaryColor,
//             fontSize: 22),
//             text: 'no Acount ?? \t',
//             children: [
//               TextSpan(
//                 recognizer: TapGestureRecognizer()..onTap = widget.onClickSignin,
//                 text: 'Sign Up as a guest',
//               style: TextStyle(decoration: TextDecoration.underline,
//               color: Theme.of(context).colorScheme.secondary)
//               )
//             ],
//           )
//           )
//         ],
//       ),
//     );
//   }
//     Future signIn () async {
//       showDialog(
//         barrierDismissible: false,
//         context: context,
//        builder: (context) => Center(child: CircularProgressIndicator(),)
//       );

//       try{
//           await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim()
//         );

//       } on FirebaseAuthException catch (err){
//         //print(err);
//         Utils.showSnackBar(err.message);
//       }
//       navigatorkey.currentState!.popUntil((route) => route.isFirst); 
//     }
//   }

  
  
