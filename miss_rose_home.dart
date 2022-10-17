
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/add_missrose_detail.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/miss_rose_list_items.dart';

class MissRoseHomePage extends StatefulWidget {
  const MissRoseHomePage({super.key, });


  @override
  State<MissRoseHomePage> createState() => _MissRoseHomePageState();
}

class _MissRoseHomePageState extends State<MissRoseHomePage> {

static List<String> itemnames = [
  'ظلال مخملي',
  'بدرة مس روز غامضة',
  '  منكير مس روز',
  '   تاتو مس روز',
  ' بدرة فاتحة ',
  ' بدرة عروس ',
  ' بدرة مس روز كل الدرجات (4*1) ',
   ' بدرة حواجب ',
  ' كونسيلر مس روز  ',
  '   ظلال لامع'];

static List<String> itemimages =[
  
  'assets/images/missrose/08.jpg',
  'assets/images/missrose/14.jpg',
  'assets/images/missrose/44.jpg',
  'assets/images/missrose/55.png',
  'assets/images/missrose/64.jpeg',
  'assets/images/missrose/76.jpg',
  'assets/images/missrose/88.jpg',
  'assets/images/missrose/11.jpg',
  'assets/images/missrose/021.jpg',
  'assets/images/missrose/1015.jpg'
  ] ;
  static List<double> prices =[250,300,400,250,300,180,400,300,180,400,];

  static List<String> Description =['','','','','','','','','','','',];

  final List<MissRoseModel> missRoseData = List.generate(
    
    itemnames.length, 
    
    (index) => 
    MissRoseModel(
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
      body:MissRoseListItems(missroseData: missRoseData)
      
       
    );
  }
}
