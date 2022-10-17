 
// import 'package:email_validator/email_validator.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:missrose_app/const.dart';
// import 'package:missrose_app/main.dart';
// import 'package:missrose_app/utils.dart';
// //import 'package:missrose_app/main.dart';

// class SignUpPage extends StatefulWidget {
//   final Function () onClickSignin;

//   const SignUpPage({super.key, required this.onClickSignin});


//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final formKey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();


//   @override
//   void dispose() {
//     // TODO: implement dispose
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.all(16),
//       child: Form(
//         key: formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 80,),
//             //FlutterLogo(size: 125,),
//               Container(
//               width:180,
//               height: 120,
//               child: Image.asset("assets/images/splash_1.png",)),
//             SizedBox(height: 20,),
//             Text('Hi There , \n Wellcome Back',
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize:32,fontWeight: FontWeight.bold,
//             color: kprimaryColor),
//             ),
//             SizedBox(height: 40,),
//             TextFormField(
//               controller: emailController,            
//             cursorColor: Colors.white,
//             textInputAction: TextInputAction.next,
//             decoration: InputDecoration(labelText:'Email Address' ),
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator: (email) =>
//             email != null && !EmailValidator.validate(email) ?'Enter a valid email':null,
//             ),
//             SizedBox(height: 4,),
//             TextFormField(controller: passwordController,
//             cursorColor: Colors.white,
//             textInputAction: TextInputAction.done,
//             obscureText: true,
//             decoration: InputDecoration(labelText:'Password' ),
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator: (value) =>
//             value != null && value.length<6 ?'Enter a valid password':null,
//             ),
//             SizedBox(height: 30,),
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
                
//                 minimumSize: Size.fromHeight(50),
//               ),
//               icon: Icon(Icons.lock_open,size: 32,color: kprimaryColor,),
//               label: Text('Sign Up',
//               style: TextStyle(fontSize: 24),
              
//               ), onPressed: (
                
//               ) =>
//                 SignUp() ,
//             //  onPressed: signUp,
//             ),
//             SizedBox(height: 30,),
//             RichText(text: TextSpan(
//               style: TextStyle(color: kprimaryColor,
//               fontSize: 22),
//               text: 'Allready have an Acount ??\t',
//               children: [
//                 TextSpan(
//                   recognizer: TapGestureRecognizer()..onTap = widget.onClickSignin,
//                   text: 'Login',
//                 style: TextStyle(decoration: TextDecoration.underline,
//                 color: Theme.of(context).colorScheme.secondary)
//                 )
//               ],
//             )
//             )
//           ],
//         ),
//       ),
//     );
//   }


//   Future SignUp() async {
//     final isValid = formKey.currentState!.validate();
//     if(!isValid) return ;

//     showDialog(
//       barrierDismissible: false,
//       context: context,
//      builder: (context)=>Center(child: CircularProgressIndicator(),)
//     );
//     try{
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//        password: passwordController.text.trim()
//        );
//     } on FirebaseAuthException
//     catch (e){
//       Utils.showSnackBar(e.message);
//       //print(e);
//      // Utils.showSnackBar(e.message);
//     }
    
//     navigatorkey.currentState!.popUntil((route) => route.isFirst); 
//   }
// }
