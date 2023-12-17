import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';

class GiyimScreen extends StatelessWidget {
  const GiyimScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Üst Giyim"),
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
                      elbise("assets/images/u10.jpeg","Bordo Sweatshirt","299TL"),
                      elbise("assets/images/u11.jpeg","Sarı Sweatshirt","499TL"),
                      elbise("assets/images/u12.jpeg","Pembe Sweatshirt","799TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/u13.jpeg","Gri Kazak","899TL"),
                      elbise("assets/images/u14.jpeg","Lacivert Crop","345TL"),
                      elbise("assets/images/u15.jpeg","Turuncu Sweatshirt","499TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/u1.jpeg","Siyah Crop","999TL"),
                      elbise("assets/images/u2.jpeg","Zebra Kazak","1085TL"),
                      elbise("assets/images/u3.jpeg","Lacivert Kazak","678TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/u4.jpeg","Gri Sweatshirt","877TL"),
                      elbise("assets/images/u5.jpeg","Lacivert Sweatshirt","799TL"),
                      elbise("assets/images/u6.jpeg","Beyaz Sweatshirt","999TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/u7.jpeg","Pembe Sweatshirt","299TL"),
                      elbise("assets/images/u8.jpeg","Mor Kazak","499TL"),
                      elbise("assets/images/u9.jpeg","Kırmızı Sweatshirt","239TL"),
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