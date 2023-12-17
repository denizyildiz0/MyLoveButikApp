import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';

class CokSatanScreen extends StatelessWidget {
  const CokSatanScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Çok Satanlar"),
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
                      elbise("assets/images/a9.jpeg","Sİyah Crop","199TL"),
                      elbise("assets/images/a12.jpeg","Payet Etek","299TL"),
                      elbise("assets/images/e1.jpeg","Gri Elbise","799TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/e5.jpeg","Kırmızı Elbise","620TL"),
                      elbise("assets/images/e8.jpeg","Siyah Elbise","445TL"),
                      elbise("assets/images/e13.jpeg","Mavi Elbise","499TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/e14.jpeg","Yeşil Elbise","340TL"),
                      elbise("assets/images/e15.jpeg","Pembe Elbise","490TL"),
                      elbise("assets/images/u1.jpeg","Siyah Crop","330TL"),
                    ],
                  ),
                  Row(
                    children: [
                      elbise("assets/images/u8.jpeg","Mor Kazak","677TL"),
                      elbise("assets/images/u13.jpeg","Gri Kazak","599TL"),
                      elbise("assets/images/e1.jpeg","Gri Elbise","799TL"),
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