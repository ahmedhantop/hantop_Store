//import 'package:flutter/material.dart';
//import 'package:missrose_app/hantopstore/widgets.dart/hantop_data_model.dart';

class Products {
  final String title;
  //String description;
  final List<String> images;
  //final List<Color> colors;
  final double rating, price;
  final bool isfavorite, isPopular;
Products({
  //required this.id, 
  required this.images,
  //required this.colors,
  required this.title,
  required this.price,
   //this.description,
   this.isfavorite=false,
   this.isPopular=false,
   this.rating=0.0,
});
}

List<Products> myproducts =[
  Products(
    
    images: [
        "assets/images/red/lab_1.jpg",
        "assets/images/red/lab_2.jpg",
        "assets/images/red/lab_3.jpg",
        "assets/images/red/lab_4.jpg",
        "assets/images/red/lab_5.jpg",],
    
      title: 
        "لاب توب ماك اير",        
       price:484.99, 
       rating: 4.8,
       isPopular: true,     
       ),
       
       Products(
            images: ["assets/images/red/abaya_1.jpg"],   
             title: ' عباية خليجية', 
             price: 44.55, 
             isPopular: true,
        
             ) ,

      Products(
        images:  
        [
      "assets/images/red/product-10.jpg",    
],
      
    
          title: 'حذاء رياضي', 
          price: 50.5, 
          rating: 4.1,
          isPopular: true,
          
          ),
          Products(
            images: ["assets/images/red/category-3.jpg"],
             title: 'تشيرت نسائي', 
             price: 36.55, 
             ),
                Products(
        images: [  
      "assets/images/red/exclusive.png",
      ],
  
          title: 'ساعة أندرويد', 
          price: 50.5, 
          rating: 4.1,
          isPopular: true,
      
          ),          
              
];
