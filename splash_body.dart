import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/splash/splash_class.dart';
import 'package:hantop_store_app/hantopstore/splash/splash_content.dart';

import 'package:hantop_store_app/hantopstore/widgets/defualt_btn.dart';


class Body extends StatefulWidget{


  const Body({super.key,});
  
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
   
  int currentpage=0;
static  List <String> splasData=[
     "حباب الجانا في دارنا",       
         "تعال علينا وامورك مقضية",      
       "جاهزيين في أي وقت .. جرب بس",        
    "24 ساعة معاك .. اطلب واتأكد",
               "يلة ....... اضغط على أستمرار وشوف العجب",                
  ];

static List<String> splashImages =  [
  'assets/images/applogo/logo.png' ,
  'assets/images/applogo/logo.png' ,
  'assets/images/applogo/logo.png' ,
  'assets/images/applogo/logo.png' ,
  'assets/images/applogo/logo.png' ,
  
  ];

  final List<Splash> splash =List.generate(
  splasData.length,
    (index) => Splash(
      '${splasData[index]}',
       '${splashImages[index]}', 
  
       )
    );
@override 
  Widget build(BuildContext context){
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                                currentpage=value;          
                                        });
                  },
                  itemCount: splasData.length,
                  itemBuilder : (context,index)=>
                SplashContent(
                  text: splasData[index],
                image: splashImages[index],
                ),
                ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[    
                        Spacer()               ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:List.generate(
                        splasData.length,
                        (index) => buildDot(index:index),
                        ),
                        ),
                        Spacer(),
                        DefaultBtn(
                                              
                        ),
                      
                        Spacer(),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
  
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration:Duration(milliseconds: 200),
                      margin: EdgeInsets.only(right: 5),
                      height: 6,
                      width: currentpage==index ? 20 : 6,
                      decoration: BoxDecoration(
                        color:currentpage==index? Colors.amberAccent: Color(0xFFD8D8D8),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    );
  }

}

