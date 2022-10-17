import 'package:flutter/material.dart';
import 'package:hantop_store_app/hantopstore/home/popular_product.dart';
import 'package:hantop_store_app/hantopstore/home/special_offer_card.dart';
import 'package:hantop_store_app/hantopstore/widgets/discount_banner.dart';
import 'package:hantop_store_app/hantopstore/home/home_header.dart';
import 'package:hantop_store_app/hantopstore/widgets/section_title.dart';
import 'package:hantop_store_app/hantopstore/widgets/categories.dart';
//import 'package:url_launcher/url_launcher_string.dart';
//import 'package:url_launcher/url_launcher.dart';


class HomeBody extends StatelessWidget {

  const HomeBody({super.key, 

  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Center(
              child: SectionTitle(
                text1: 'مرحبآ بك في متجرنا المتواضع',
                text2: '',
                press: (){},
                )
                ),
             HomeHeader(),
             SizedBox(height: 12,),
            DiscountBanner(),            
             SizedBox(height: 12,),
             Special0fferCard(),
             SizedBox(height: 12,),            
             PopularProducts(  
             ),
              SizedBox(height: 10,),
              SectionTitle(
                text1: 'تواصل معنا عبر صفحاتنا',
                text2: '',
                press: (){},
                ),
             Categories(),

        ]
        ),
      ),
    );
  }
}
