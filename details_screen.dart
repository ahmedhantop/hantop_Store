import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/details_screen_body.dart';
//import 'package:hantop_store_app/hantopstore/details_screen_body.dart';

import 'package:hantop_store_app/hantopstore/widgets/products.dart';

//import 'package:hantop_store/details_screen_body.dart';


class DetailsScreen extends StatelessWidget {
  
  const DetailsScreen({super.key, required this.products, 
  // required this.imagAssets, 
  // required this.productTiltle, 
  // required this.productDescription, 
  // required this.productPrice,

  
  });
  //   final  String imagAssets ,productTiltle , productDescription;
  // final double productPrice;

final Products products;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('متجر أبوحريرة'),
        backgroundColor: Colors.amberAccent.withOpacity(0.7)
      ),
  
      body: DetailsScreenBody(products: products,
        // productDescription: productDescription,
        // productTiltle: productTiltle, 
        // productPrice: productPrice, 
        // imagAssets: imagAssets,
      
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amberAccent.withOpacity(0.01),
      leading: SizedBox(
        width: 280,
        height: 56,
      child: Container(
        decoration: BoxDecoration(
          color:Colors.amberAccent,
          borderRadius: BorderRadius.circular(15)),
        child: TextButton(
      
          onPressed: (){},
        child: Icon(Icons.arrow_back),
        ),
      ),
    )
    );
  }
}
