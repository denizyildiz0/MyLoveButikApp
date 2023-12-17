import 'package:flutter/material.dart';
import 'package:navigation_app/screens/aksesuar.dart';
import 'package:navigation_app/screens/altGiyim.dart';
import 'package:navigation_app/screens/arama.dart';
import 'package:navigation_app/screens/cokSatan.dart';
import 'package:navigation_app/screens/elbise.dart';
import 'package:navigation_app/screens/esofman.dart';
import 'package:navigation_app/screens/favorite.dart';
import 'package:navigation_app/screens/giyim.dart';
import 'package:navigation_app/screens/homeScreen.dart';
import 'package:navigation_app/screens/loginScreen.dart';
import 'package:navigation_app/screens/profileScreen.dart';
import 'package:navigation_app/screens/registerScreen.dart';
import 'package:navigation_app/screens/sepet.dart';
import 'package:navigation_app/screens/settingsScreen.dart';
import 'package:navigation_app/screens/trend.dart';
import 'package:navigation_app/screens/welcomeScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => Homescreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/register': (context) => RegisterScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings':(context) => SettingsScreen(),
        '/giyim':(context) => GiyimScreen(),
        '/altgiyim':(context) => AltGiyimScreen(),
        '/esofman':(context) => esofmanScreen(),
        '/elbise':(context) => ElbiseScreen(),
        '/aksesuar':(context) => AksesuarScreen(),
        '/cokSatan':(context) => CokSatanScreen(),
        '/trend':(context) => TrendlerScreen(),
        '/arama':(context) => aramaScreen(),
        '/favorite':(context) => FavoriteScreen(),
        '/sepet':(context) => SepetScreen(),

      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
