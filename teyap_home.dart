
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/screens/tyap/tyep_list_items.dart';
import 'package:hantop_store_app/hantopstore/widgets/hantop_data_model.dart';



class TeyapPage extends StatefulWidget {
  const TeyapPage({super.key, });


  @override
  State<TeyapPage> createState() => _TeyapPageState();
}

class _TeyapPageState extends State<TeyapPage> {

static List<String> Tyabnames = [
  'توب سليمان مهدي',
  'توب تركي فاخر',
  'توب بنكك 2022',
  'توب هزاز هندي',
  'توب بيت عادي',
  'توب لاتي ',
  'توب آخر صيحة ',
  ' توب تركي عادي'];

static List<String> Tyapimages =[
  
  'assets/images/tyap/01.jpeg',
  'assets/images/tyap/011.jpeg',
  'assets/images/tyap/20.jpeg',
  'assets/images/tyap/80.jpeg',
  'assets/images/tyap/01.jpeg',
  'assets/images/tyap/011.jpeg',
  'assets/images/tyap/20.jpeg',
  'assets/images/tyap/80.jpeg'
  ] ;
  static List<double> prices =[250,300,180,400,250,300,180,400];

  static List<String> Description =['','','','','','','','',];

  final List<TyapDataModel> tyapData = List.generate(
    
    Tyabnames.length, 
    
    (index) => 
    TyapDataModel(
      '${Tyabnames[index]}',
    '${Tyapimages[index]}',
      '${Description[index]}',
        prices[index]
        )
  );
    
    @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(
        title: Text('متجر أبوحريرة'),
        backgroundColor: Colors.amberAccent.withOpacity(0.7)
      ),
      body:  TyepListItems(tyapData: tyapData),
      
       
    );
  }
}
