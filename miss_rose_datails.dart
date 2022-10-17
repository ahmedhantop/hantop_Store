
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/rounded_icon_btn.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/add_missrose_detail.dart';
//import 'package:hantop_store_app/hantopstore/widgets/image_builder.dart';

//import '../../rose_data_model.dart';
// import 'package:hantop_store/widgets.dart/hantop_data_model.dart';
// import 'package:hantop_store/widgets.dart/image_builder.dart';


class MissRoseDetails extends StatefulWidget {

  final MissRoseModel missRoseModel;
  const MissRoseDetails({super.key, 
  required this.missRoseModel});

  @override
  State<MissRoseDetails> createState() => _MissRoseDetailsState();
}

class _MissRoseDetailsState extends State<MissRoseDetails> {
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
          Container(
              height: 420,
            width: 500,  
            child: Image.asset(widget.missRoseModel.Image)),
            SizedBox(height: 25,),
          Text(widget.missRoseModel.name,
          style: TextStyle(fontSize: 24),),
            SizedBox(height: 5,),
          Text(widget.missRoseModel.describ,
          style: TextStyle(fontSize: 24),),
            //SizedBox(height: 5,),
            Text(" السعر : ${widget.missRoseModel.price} ",
            style: TextStyle(color: Colors.greenAccent.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 18)
            ),
        //     Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ...List.generate(
        //       usercartDetails.length,
        //      // tyapDataModel.length,
        //       (index) =>            
        //   biuldPerviewImage(index,missRoseModel.Image),
        //     )
        // ],
        // ),

        
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
            
          ),
            SizedBox(width: 120,),
        
        ]
        ),
          
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
              pCount: _counter,
              pTitle: widget.missRoseModel.name,
             pPrice: widget.missRoseModel.price,
             imagAssets: widget.missRoseModel.Image,
          
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