
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/home/product_card.dart';
import 'package:hantop_store_app/hantopstore/widgets/section_title.dart';
import 'package:hantop_store_app/hantopstore/widgets/products.dart';

class PopularProducts extends StatelessWidget {

  const PopularProducts({
    Key? key, 

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: (){},
           text1: 'متوفر الأن',
           text2: '',),
    SizedBox(height: 20,),
        SingleChildScrollView(
         scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             ...List.generate(
               myproducts.length, 
             (index) {
              if(myproducts[index].isPopular)
              return ProductCard(       
                products: myproducts[index],          
              );
              return SizedBox.shrink();
  },            
             ),
             SizedBox(width: 20,),
            ],
          ),
        ),
      ],
    );
  }
}


