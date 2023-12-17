import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorilerim"),
        ),
        body: Column(
          children: [
            SepetItem("assets/images/e8.jpeg", "Elbise", "Derin yırtmaç detaylı siyah abiye", "Beden Seçiniz","Sepete Ekle"),
            SizedBox(height: 2,),
            SepetItem("assets/images/e5.jpeg", "Elbise", "Derin yırtmaç detaylı kırmızı abiye", "Beden Seçiniz","Sepete Ekle"),
            SizedBox(height: 2,),
            SepetItem("assets/images/e3.jpeg", "Elbise", "Derin yırtmaç detaylı turuncu abiye", "Beden Seçiniz","Sepete Ekle"),
          ],
        ),
    );
  }
}

Widget SepetItem(String photo, String title, String description, String beden, String sepet) => Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    width: 390,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Color.fromARGB(23, 158, 158, 158),
      ),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                photo,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(155, 0, 0, 0),
                        ),
                      ),
                      SizedBox(width: 160,),
                      Icon(Icons.favorite,),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 10,
                      color: Color.fromARGB(170, 50, 49, 49),
                    ),
                  ),
                  SizedBox(height: 40),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(194, 247, 247, 247),
                          border: Border.all(color: Color.fromARGB(255, 234, 37, 218)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          beden,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 234, 37, 218),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(194, 247, 247, 247),
                          border: Border.all(color: Color.fromARGB(255, 234, 37, 218)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          sepet,
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 234, 37, 218),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8), 
      ],
    ),
  ),
);

 