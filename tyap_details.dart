
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/rounded_icon_btn.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
import 'package:hantop_store_app/hantopstore/widgets/hantop_data_model.dart';
import 'package:hantop_store_app/hantopstore/widgets/image_builder.dart';
// import 'package:hantop_store/widgets.dart/hantop_data_model.dart';
// import 'package:hantop_store/widgets.dart/image_builder.dart';



class TyapDetails extends StatefulWidget {
  final TyapDataModel tyapDataModel;
  const TyapDetails({super.key, 
  required this.tyapDataModel});

  @override
  State<TyapDetails> createState() => _TyapDetailsState();
}

class _TyapDetailsState extends State<TyapDetails> {

 int _counter =1;
  // final  String imagAssets ,productTiltle , productDescription;
void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('متجر أبوحريرة'),
        backgroundColor: Colors.amberAccent.withOpacity(0.7)
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
            SizedBox(height: 25,),
     AspectRatio(
               aspectRatio: 1.1,
               child: Container(              
                 padding: EdgeInsets.all(2),
                 decoration: BoxDecoration(
                   color:  
                   Color(0xFF343434)
                   .withOpacity(0.1),
                   //Colors.amberAccent,
                   borderRadius: BorderRadius.circular(15)
                   ),
                   child: Image.asset(widget.tyapDataModel.Image),
                 ),
          ),
      
      
        
          // Container(
          //   height: 420,
          //   width: 500,            
          //   child: Image.asset(tyapDataModel.Image)),
            SizedBox(height: 25,),
          Text(widget.tyapDataModel.name,
          style: TextStyle(fontSize: 24),),
            SizedBox(height: 5,),
          Text(widget.tyapDataModel.describ,
          style: TextStyle(fontSize: 24),
          ),
            //SizedBox(height: 5,),
            Text(" السعر : ${widget.tyapDataModel.price} ",
            style: TextStyle(color: Colors.greenAccent.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 18)
            ),

             Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(width: 40,),
            //Spacer(),
           
        //  Spacer(),
          GestureDetector(
            onTap: () {
              _incrementCounter();
              //counter++;
            },
            child: RoundedIconBtn(
              icon: Icons.add, 
              // press:(){
              // //  _incrementCounter();
              //   //counter++;
              //    //amount++;
              // }, 
              //showShadow: true
              ),
          ),
             //Spacer(),
            GestureDetector(
            onTap: () { 
              _decrementCounter() ;
            },
              child: RoundedIconBtn(
              icon: Icons.remove, 
              // press:(){
              //   //counter--;
              //   // _decrementCounter();
              //    //amount--;
              // }, 
                         // showShadow: true
              
            ),
            ),
            SizedBox(width: 45,),
             //Spacer(),
                 Text(
            '$_counter',
            style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent,
                )
                
             //Theme.of(context).textTheme.headline4,
          ),
            SizedBox(width: 120,),
         // RoundedIconBtn()
        ]
        ),

      

            SizedBox(height: 15,),
            SizedBox(
      
        width: 280,
        height: 56,
        
      child: Container(
    
        decoration: BoxDecoration(
          color:Colors.amberAccent,
          borderRadius: BorderRadius.circular(15)),
        child: TextButton(   
                             
          onPressed: (){
           
                       
            addusercartDetails(
              imagAssets: widget.tyapDataModel.Image, 
            pCount: _counter, 
              pPrice: widget.tyapDataModel.price, 
              pTitle: widget.tyapDataModel.name,
            
              );
            
          },
           child: Text('اضافة للسلة',
             style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent,
                ),)
           ),
      ),
    ),

          
            SizedBox(height: 15,),
          
        ],
      ),
    );
  }
}

