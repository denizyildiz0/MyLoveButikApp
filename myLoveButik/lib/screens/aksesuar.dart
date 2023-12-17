import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';

class AksesuarScreen extends StatelessWidget {
  const AksesuarScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Aksesuar"),
        ),
        
        body: Column(
          children: [
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                children: [
                  Row(
                    children: [
                      elbise("assets/images/t1.jpeg","Bileklik","168TL"),
                      elbise("assets/images/t2.jpeg","Bileklik","299TL"),
                      elbise("assets/images/t3.jpeg","Kolye Set","289TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/t4.jpeg","Kalp Kolye","420TL"),
                      elbise("assets/images/t5.jpeg","Piercing","345TL"),
                      elbise("assets/images/t6.jpeg","Kolye","199TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/t7.jpeg","Küpe","240TL"),
                      elbise("assets/images/t8.jpeg","Küpe","290TL"),
                      elbise("assets/images/t9.jpeg","Küpe","130TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/t10.jpeg","Bileklik","177TL"),
                      elbise("assets/images/t11.jpeg","Kolye Set","799TL"),
                    ],
                  ),
                  
                  
                ],
              ),
            ),
          ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AltMenuItem(icon: Icon(Icons.home_outlined,size: 29,), onTap:() {
                      Navigator.pushNamed(context, "/home");
                    },),
                    AltMenuItem(icon: Icon(Icons.favorite_outline,size: 29,), onTap:() {
                      Navigator.pushNamed(context, "/favorite");
                    },),
                    AltMenuItem(icon: Icon(Icons.local_mall_outlined,size: 29,), onTap:() {
                      Navigator.pushNamed(context, "/sepet");
                    },),
                    AltMenuItem(icon: Icon(Icons.account_circle_outlined,size: 29,), onTap:() {
                      Navigator.pushNamed(context, "/profile");
                    },),
                  ],
                ),
              ),


          ],
        )
    );
  }

  Container elbise(String image, String title, String fiyat ) {
    return Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Image.asset(image,
                  width: 100,
                  ),
                  Text(title,style: TextStyle(fontSize: 9),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fiyat ,style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                      SizedBox(width: 35,),
                      Icon(Icons.shopping_basket_outlined, color: Color.fromARGB(241, 248, 118, 255),),
                    ],
                    
                  ),
                ],
              ),
            ),
          );
  }
}