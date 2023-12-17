import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/altMenu.dart';
import 'package:navigation_app/widgets/menuItem.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset(
              "assets/images/logo.png",
              height: 120,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, "/arama");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            
            Expanded(
              child: Column(
                children: [
                 
                  SizedBox(height: 80,),
                  MenuItem(
                    title: "Üst Giyim",
                    icon: Icon(
                      Icons.volunteer_activism,
                      size: 20,
                    ),
                    onTap: () {
                     Navigator.pushNamed(context, "/giyim");
                    },
                  ),
                  MenuItem(
                    title: "Alt Giyim",
                    icon: Icon(
                      Icons.volunteer_activism,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/altgiyim");
                    },
                  ),
                  MenuItem(
                    title: "Eşofman Takımı",
                    icon: Icon(
                      Icons.e_mobiledata,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/esofman");
                    },
                  ),
                  MenuItem(
                    title: "Elbise",
                    icon: Icon(
                      Icons.woman_2_outlined,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/elbise");
                    },
                  ),
                  MenuItem(
                    title: "Aksesuar",
                    icon: Icon(
                      Icons.filter_vintage_outlined,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/aksesuar");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    title: "Çok Satanlar",
                    icon: Icon(
                      Icons.redeem_outlined,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/cokSatan");
                    },
                  ),
                  MenuItem(
                    title: "Trendler",
                    icon: Icon(
                      Icons.star_border_outlined,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/trend");
                    },
                  ),
                  MenuItem(
                    title: "Ayarlar",
                    icon: Icon(
                      Icons.settings,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    icon: Icon(Icons.logout_outlined),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/welcome", (route) => false);
                    },
                    title: "Çıkış Yap",
                  ),
                ],
              ),
            ),
            Text(
              "Version 1.0.8",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                          Image.asset("assets/images/s1.jpeg",
                          width: 385,
                          height: 110,
                          fit: BoxFit.cover,
                          ),
                        ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text("..ÇOK SATANLAR..",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                          ),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            cokSatan("assets/images/e1.jpeg","Gri Elbise","1019TL"),
                            cokSatan("assets/images/e5.jpeg","Kırmızı Elbise","989TL"),
                            cokSatan("assets/images/e8.jpeg","Siyah Elbise","719TL"),
                            cokSatan("assets/images/e3.jpeg","Turuncu Elbise","989TL"),
                            cokSatan("assets/images/e14.jpeg","Yeşil Elbise","999TL"),
                            cokSatan("assets/images/e15.jpeg","Pembe Elbise","589TL"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child:
                         Text("*KONBİNİNİ AKSESUARLARLA TAMAMLA*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15, 
                          color: Color.fromARGB(255, 249, 138, 212)),
                          ),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            cokSatan("assets/images/t7.jpeg","Küpe","219TL"),
                            cokSatan("assets/images/t10.jpeg","Saat","1089TL"),
                            cokSatan("assets/images/t9.jpeg","Küpe","219TL"),
                            cokSatan("assets/images/t11.jpeg","Kolye","389TL"),
                            cokSatan("assets/images/t9.jpeg","Küpe","219TL"),
                            cokSatan("assets/images/t5.jpeg","Küpe","219TL"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text("..YENİ GELENLER..",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                          ),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            cokSatan("assets/images/a12.jpeg","Siyah Takım","999TL"),
                            cokSatan("assets/images/e4.jpeg","Mavi Elbise","889TL"),
                            cokSatan("assets/images/e6.jpeg","Pembe Elbise","719TL"),
                            cokSatan("assets/images/e7.jpeg","Beyaz Elbise","989TL"),
                            cokSatan("assets/images/e12.jpeg","Mor Elbise","619TL"),
                            cokSatan("assets/images/e8.jpeg","Siyah Elbise","1089TL"),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      SingleChildScrollView(
                        child: Container(
                          child: Row(
                            children: [
                            Image.asset("assets/images/s3.jpeg",
                            width: 385,
                            height: 110,
                            fit: BoxFit.cover,
                            ),
                          ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
      ),
    );
  }

  Widget yeniGelen(String image,String title, String fiyat) => Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
                              children: [
                              Image.asset(image,
                              width: 60,
                              ),
                              Text(title,style: TextStyle(fontSize: 11),),
                              Text(fiyat,style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                            ],
    ),
  );

  Widget cokSatan(String image,String title, String fiyat) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
                          children: [
                            Image.asset(image,
                            width: 60,
                            ),
                            Text(title,style: TextStyle(fontSize: 11),),
                            Text(fiyat,style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                          ],
                        ),
    );
  }

  Widget StoryItem(String avatar, String yazi) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                           Colors.purple,
                                           Colors.orange,
                                           Colors.pink,
                                 ]),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                
                                child: CircleAvatar(
                                  backgroundImage:AssetImage(avatar),
                                  radius: 29,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(yazi,
                            style: TextStyle(fontSize: 10,
                            color: const Color.fromARGB(94, 0, 0, 0)),),
                          ],
                        ),
    );
  }
}
