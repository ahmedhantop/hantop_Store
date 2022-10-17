
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/add_missrose_detail.dart';
import 'package:hantop_store_app/hantopstore/screens/missrose/miss_rose_datails.dart';

//import 'package:missrose_app/hantopstore/widgets.dart/hantop_data_model.dart';
// import 'package:hantop_store/widgets.dart/hantop_data_model.dart';
// import 'package:hantop_store/screens/missrose/miss_rose_datails.dart';


class MissRoseListItems extends StatelessWidget {
  const MissRoseListItems({
    Key? key, required this.missroseData,
  
  }) : super(key: key);

  final List<MissRoseModel> missroseData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return 
         Column(
           children: [
          
             ListTile(
                title: Text(missroseData[index].name),
              leading:CircleAvatar(
                backgroundColor: Colors.white,
              child: Image.asset(missroseData[index].Image),),
              onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MissRoseDetails(
                    missRoseModel: missroseData[index],
                    
                    ),
                  )
                  );
              }
        
        ),
           ],
         );
      },
      itemCount: missroseData.length,
      );
  }
}
