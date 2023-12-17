import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş Yap"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Giriş Yapmak İçin Bilgilerinizi Giriniz..",
              style:TextStyle(
                fontWeight: FontWeight.bold,
                )),
             
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
            colors: [
              Color.fromRGBO(214, 125, 244, 1),
              Color.fromRGBO(255, 86, 255, 1),
              
            ],
          ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Lütfen email adresinizi giriniz..",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                   gradient: LinearGradient(
            colors: [
              Color.fromRGBO(214, 125, 244, 1),
              Color.fromRGBO(255, 86, 255, 1),
            ],
          ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Lütfen şifrenizi giriniz..",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, "/home", (Route <dynamic> route) => false);
                    },
                    child: Text("Giriş Yap"),
                    
                    
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
