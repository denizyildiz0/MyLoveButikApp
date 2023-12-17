import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';

class AltGiyimScreen extends StatelessWidget {
  const AltGiyimScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Alt Giyim"),
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
                      elbise("assets/images/a1.jpeg","Bej Palazzo Pantolon","299TL"),
                      elbise("assets/images/a2.jpeg","Krem Etek","499TL"),
                      elbise("assets/images/a3.jpeg","Deri Şort Etek","799TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/a4.jpeg","Kahve Pantolon","899TL"),
                      elbise("assets/images/a5.jpeg","Siyah Pantolon","345TL"),
                      elbise("assets/images/a6.jpeg","Kot Jean","499TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/a7.jpeg","Parlak Pantolon","999TL"),
                      elbise("assets/images/a8.jpeg","Deri İspanyol","1085TL"),
                      elbise("assets/images/a9.jpeg","Gri Şort Etek","678TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/a10.jpeg","Kot Palazzo","877TL"),
                      elbise("assets/images/a11.jpeg","Leopar Palazzo","799TL"),
                      elbise("assets/images/a12.jpeg","Payet Şort Etek","999TL"),
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