import 'package:flutter/material.dart';

class aramaScreen extends StatelessWidget {
  const aramaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arama"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 234, 37, 218)),
                  gradient: LinearGradient(
            colors: [
              Color.fromRGBO(238, 237, 238, 1),
              Color.fromRGBO(201, 200, 201, 1),
            ],
          ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Aradığınız Ürün Nedir??",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Arama Yap"),
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