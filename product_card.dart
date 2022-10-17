
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hantop_store_app/hantopstore/detail_screen/details_screen.dart';
//import 'package:hantop_store_app/hantopstore/details_screen.dart';
import 'package:hantop_store_app/hantopstore/widgets/products.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
     this.width = 130, 
     this.aspectRatio = 1.1, 
     required this.products, 
  //  required this.press,
  }) : super(key: key);
  final double width,aspectRatio;
  final Products products;
  //final TyapDataModel tyapDataModel;
  //final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:20),
      child: GestureDetector(
        onTap: (){
      
        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                            DetailsScreen(
                              products: products,
                            )
                          
                          ),
        );

        },
    
        child: SizedBox(
         width: width,
          child: Column(
           children: [
             AspectRatio(
               aspectRatio: aspectRatio,
               child: Container(              
                 padding: EdgeInsets.all(2),
                 decoration: BoxDecoration(
                   color:  
                   Color(0xFF343434)
                   .withOpacity(0.1),
            
                   borderRadius: BorderRadius.circular(15)
                   ),
                   child: Image.asset(products.images[0]),
                 ),
             
             ),
             const SizedBox(height: 5,),
             Text(products.title,
             style: TextStyle(color: Colors.black),
             maxLines: 1,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                SizedBox(height: 8,),
                 Text('\$ ${products.price}',
                 style: TextStyle(
                   color: Colors.amberAccent,
                   fontSize: 18,
                   fontWeight: FontWeight.w600
                 ),
                 ),
              
                   Container(
                     padding: EdgeInsets.all(8),
                    width: 28,
                    height: 28,
                   decoration:
                   BoxDecoration(
      
                     color:  products.isfavorite ?
                     Color(0xFF343ff4).withOpacity(0.15) :  Color(0xFaa43ff4).withOpacity(0.1) ,
               
                     shape: BoxShape.circle
                     ),
                   child: SvgPicture.asset("assets/icons/Heart Icon.svg",                 
                   color: products.isfavorite 
                   ?  Color(0xffDBDEE4)
                   :Color(0xffff4848)
                   ),
                   ),
             
               ],
             )
           ],
          ),
        ),
      ),
    );
  }
}
