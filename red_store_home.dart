
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/screens/red/red_store_list_items.dart';
import 'package:hantop_store_app/hantopstore/widgets/hantop_data_model.dart';


class RedStoreHomePage extends StatefulWidget {
  const RedStoreHomePage({super.key, });


  @override
  State<RedStoreHomePage> createState() => _RedStoreHomePageState();
}

class _RedStoreHomePageState extends State<RedStoreHomePage> {

static List<String> itemnames = [
  ' تي تشيرت بوما',
  ' تي تشيرت نايكي سادة',
' تي تشيرت نايكي 2022',
  ' man in black   ',
  '  طقم رياضي ',
   ' طقم شبابي ',
  'تي شيرت بناتي ',
  
  ];

static List<String> itemimages =[
  'assets/images/red/gallery-1.jpg',
  "assets/images/red/product-4.jpg",  
  'assets/images/red/product-6.jpg',
'assets/images/red/product-12.jpg',
  'assets/images/red/product-3.jpg',
    'assets/images/red/category-1.jpg',
    'assets/images/red/category-3.jpg',
  
  ] ;
  static List<double> prices =[250,300,180,400,250,300,400];

  static List<String> Description =['','','','','','','',''];

  final List<RedStoreModel> redStoreData = List.generate(
    
    itemnames.length, 
    
    (index) => 
    RedStoreModel(
      '${itemnames[index]}',
    '${itemimages[index]}',
      '${Description[index]}',
        prices[index]
        )
  );
    
    @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        title: Center(
          child: Text('متجر أبوحريرة',
        ),
        ),        
        backgroundColor: Colors.amberAccent.withOpacity(0.7)
      ),
      body:RedStoreListItems(
        redStoreData: redStoreData  
      )
       
    );
  }
}
