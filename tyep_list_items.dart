
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/screens/tyap/tyap_details.dart';
import 'package:hantop_store_app/hantopstore/widgets/hantop_data_model.dart';

class TyepListItems extends StatelessWidget {
  const TyepListItems({
    Key? key,
    required this.tyapData,
  }) : super(key: key);

  final List<TyapDataModel> tyapData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return 
         ListTile(
            title: Text(tyapData[index].name),
          leading:CircleAvatar(
            backgroundColor: Colors.white,
          child: Image.asset(tyapData[index].Image),),
          onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TyapDetails(tyapDataModel: tyapData[index],),
              )
              );
          }
        
        );
      },
      itemCount: tyapData.length,
      );
  }
}
