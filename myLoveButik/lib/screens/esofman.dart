import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';

class esofmanScreen extends StatelessWidget {
  const esofmanScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Eşofman Takımı"),
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
                      elbise("assets/images/es1.jpeg","Siyah Eşofman","299TL"),
                      elbise("assets/images/es2.jpeg","Mavi Eşofman","499TL"),
                      elbise("assets/images/es3.jpeg","Bej Eşofman","799TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/es4.jpeg","Krem Eşofman","899TL"),
                      elbise("assets/images/es5.jpeg","Beyaz Eşofman","345TL"),
                      elbise("assets/images/es6.jpeg","Lacivert Eşofman","499TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/es7.jpeg","Beyaz Eşofman","999TL"),
                      elbise("assets/images/es8.jpeg","Gri Eşofman","1085TL"),
                      elbise("assets/images/es9.jpeg","Lacivert Eşofman","678TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/es10.jpeg","Beyaz Eşofman","877TL"),
                      elbise("assets/images/es11.jpeg","Gri Eşofman","799TL"),
                      elbise("assets/images/es12.jpeg","Yeşil Eşofman","999TL"),
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