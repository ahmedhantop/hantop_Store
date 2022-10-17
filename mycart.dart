import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/models/add_new_request.dart';
import 'package:hantop_store_app/hantopstore/my_cart/mycart_body.dart';
import 'package:hantop_store_app/hantopstore/notyet_screen.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Center(
          child: Column(
          children: [
            Text("طلباتك ",
            style: TextStyle(color: Colors.black),),
            Text(
              "${usercartDetails.length} طلب",
          
            style: Theme.of(context).textTheme.caption,)
          ],
          
      ),
        ),
      
      ),
      body: CartBody(),

      bottomNavigationBar: ButtonNavigator(),
    );
  }
}

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items=usercartDetails;
    
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30
      ),
      height: 154,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10)
        ),
      boxShadow:[ 
        BoxShadow(offset: Offset(0,-15),
      blurRadius: 25,
      color: Color(0xFFDADADA).withOpacity(0.15)
      )]
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Text( "\$${
              items.length > 0 ? 
              items.map<double>((m) => 
              m.pPrice*m.pCount)
              .reduce((value, element) =>
               value + element)
               
                : 0
              }",
              style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 20,),
             
            
            SizedBox(
              width: 190,
              child: SizedBox(
          width: 280,
          height: 56,          
        child: Container(
          decoration: BoxDecoration(
            color:Colors.amberAccent,
            borderRadius: BorderRadius.circular(15)),
          child: TextButton(                                  
            onPressed: ()
            {              
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>              
          MyTestHomePage(
          
          )
              )
              );
            },
             child: Text('دفع الآن ',
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blueAccent,
              ),)
             ),
        ),
          ),
            ),
          ],
        ),
      ),
      
      );
  }
}
