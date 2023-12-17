import 'package:flutter/material.dart';
import 'package:navigation_app/widgets/menuItem.dart';
import 'package:navigation_app/widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ProfileItem(
            avatar: 'assets/images/profil.jpeg',
            name: "Deniz Yıldız",
          ),
          Divider(),
          MenuItem(
            icon: Icon(Icons.email),
            title: "denizz.yldz8@gmail.com",
            onTap: () {},
          ),
          Divider(),
          MenuItem(
            icon: Icon(Icons.phone),
            title: "+90 538 300 13 03",
            onTap: () {},
          ),
          Divider(),
          MenuItem(
            icon: Icon(Icons.password_outlined),
            title: "Şifre: 12345678",
            onTap: () {},
          ),
          Divider(),
          SizedBox(
            height: 25,
          ),
          
        ],
      ),
    );
  }
}
