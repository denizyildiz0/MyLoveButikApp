import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';

class ElbiseScreen extends StatelessWidget {
  const ElbiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Elbise"),
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
                      elbise("assets/images/e8.jpeg","Siyah Elbise","999TL"),
                      elbise("assets/images/e7.jpeg","Beyaz Elbise","1085TL"),
                      elbise("assets/images/e6.jpeg","Pembe Elbise","678TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/e4.jpeg","Mavi Elbise","877TL"),
                      elbise("assets/images/e5.jpeg","Kırmızı Elbise","799TL"),
                      elbise("assets/images/e3.jpeg","Turuncu Elbise","999TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/e13.jpeg","Mavi Elbise","299TL"),
                      elbise("assets/images/e14.jpeg","Yeşil Elbise","499TL"),
                      elbise("assets/images/e15.jpeg","Pembe Elbise","239TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/e9.jpeg","Lacivert Elbise","299TL"),
                      elbise("assets/images/e10.jpeg","Turuncu Elbise","499TL"),
                      elbise("assets/images/e11.jpeg","Beyaz Elbise","799TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/e1.jpeg","Gri Elbise","899TL"),
                      elbise("assets/images/e2.jpeg","Yeşil Elbise","345TL"),
                      elbise("assets/images/e12.jpeg","Mor Elbise","499TL"),
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