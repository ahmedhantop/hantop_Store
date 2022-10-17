
import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/screens/red/red_store_datails.dart';
import 'package:hantop_store_app/hantopstore/widgets/hantop_data_model.dart';

class RedStoreListItems extends StatelessWidget {
  const RedStoreListItems({
    Key? key, 
    required this.redStoreData, 
  
  }) : super(key: key);

  final List<RedStoreModel> redStoreData;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return 
         Column(
           children: [
          
             ListTile(
                title: Text(redStoreData[index].name),
              leading:CircleAvatar(
                backgroundColor: Colors.white,
              child: Image.asset(redStoreData[index].Image),),
              onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RedStoreDetails(
                  
                    redStoreModel: redStoreData[index],
                    
                    ),
                  )
                  );
              }
        
        ),
           ],
         );
      },
      itemCount: redStoreData.length,
      );
  }
}
