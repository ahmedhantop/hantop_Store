
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/rounded_icon_btn.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
import 'package:hantop_store_app/hantopstore/widgets/hantop_data_model.dart';


class RedStoreDetails extends StatefulWidget {
 
  final RedStoreModel redStoreModel;
  const RedStoreDetails({super.key, 
  required this.redStoreModel, 

  });

  @override
  State<RedStoreDetails> createState() => _RedStoreDetailsState();
}

class _RedStoreDetailsState extends State<RedStoreDetails> {

   int _counter =1;

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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('متجر أبوحريرة'),
        backgroundColor: Colors.amberAccent.withOpacity(0.7)
      ),
      body: Column(
        
       
        children: [
          SizedBox(height: 25,),
          Container(
              height: 420,
            width: 500,  
            child: Image.asset(widget.redStoreModel.Image)),
            SizedBox(height: 25,),
          Text(widget.redStoreModel.name,
          style: TextStyle(fontSize: 24),),
            SizedBox(height: 5,),
          Text(widget.redStoreModel.describ,
          style: TextStyle(fontSize: 24),),
          
            Text(" السعر : ${widget.redStoreModel.price} \$ ",
            style: TextStyle(color: Colors.greenAccent.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 18)
            ),
      
             Row(
    
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          GestureDetector(
            onTap: () {
              _incrementCounter();
            
            },
            child: RoundedIconBtn(
              icon: Icons.add, 
          
              ),
          ),
            
            GestureDetector(
            onTap: () { 
              _decrementCounter() ;
            },
              child: RoundedIconBtn(
              icon: Icons.remove, 
              
              
            ),
            ),
            SizedBox(width: 45,),
             
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
              pCount: _counter,
              pTitle:widget.redStoreModel.name,
             pPrice: widget.redStoreModel.price,
             imagAssets: widget.redStoreModel.Image,
            
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