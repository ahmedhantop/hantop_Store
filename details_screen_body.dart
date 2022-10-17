import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/rounded_icon_btn.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
//import 'package:hantop_store_app/hantopstore/widgets/image_builder.dart';
import 'package:hantop_store_app/hantopstore/widgets/products.dart';

//import 'widgets/products.dart';

class DetailsScreenBody extends StatefulWidget {
  
  const DetailsScreenBody({super.key, required this.products, 
  // required this.imagAssets, 
  // required this.productTiltle, 
  // required this.productDescription, 
  // required this.productPrice, 
 
  });

final Products products;

  @override
  State<DetailsScreenBody> createState() => _DetailsScreenBodyState();
}

class _DetailsScreenBodyState extends State<DetailsScreenBody> {
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
    //int amount=0;
    return Column(
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
            
                   borderRadius: BorderRadius.circular(15)
                   ),
                   child: Image.asset(widget.products.images[0])
                    // imagAssets),
                 ),
          ),
      
            SizedBox(height: 25,),
          Text(widget.products.title,
            //productTiltle,
          style: TextStyle(fontSize: 24),),
            SizedBox(height: 5,),
          // Text('products.description',
          //   //productDescription,
          // style: TextStyle(fontSize: 24),),
            Text(" السعر : ${widget.products.price*_counter
              } ",
            style: TextStyle(color: Colors.greenAccent.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 18)
            ),
            SizedBox(height: 15,),
        //     Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ...List.generate(
        //       usercartDetails.length,            
        //       (index) =>            
        //   biuldPerviewImage(index,widget.products.images[index]),
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
                
             //Theme.of(context).textTheme.headline4,
          ),
            SizedBox(width: 120,),
         // RoundedIconBtn()
        ]
        ),

         SizedBox(height: 25,),  
            SizedBox(      
        width: 280,
        height: 56,        
      child: Container(
        //color: Colors.amber,
        //backgroundcolor:Colors.blueAccent,
        decoration: BoxDecoration(
          color:Colors.amberAccent,
          borderRadius: BorderRadius.circular(15)),
          child:
            TextButton(child: Text('اضف إلى السلة',
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent,
                )
            ),
            onPressed: (){
              if(_counter>=1){
  addusercartDetails(
    pCount: _counter,
                pTitle: widget.products.title, 
                pPrice: widget.products.price, 
                //pCount: _counter, 
                imagAssets: widget.products.images[0]);
              }
            
  //             addcartDetails(
  //               products:products,
  //               item:4,
  //  );
              
            //  MyCartDetails(products: products, items: products.images.length);
              // addnewrequest(

              //   // productTiltle,productDescription,imagAssets,productPrice
              // );
            },
            ),
      ),
            ),
                     
        

     ],

   );
  }
}