import 'package:am_thefive_satm/screens/city_screen.dart';
import 'package:am_thefive_satm/screens/details_city_screen.dart';
import 'package:am_thefive_satm/screens/list_screen.dart';
import 'package:am_thefive_satm/screens/login_screen.dart';
import 'package:am_thefive_satm/screens/menu_screen.dart';
import 'package:am_thefive_satm/screens/password_screen.dart';
import 'package:am_thefive_satm/screens/register_screen.dart';
import 'package:am_thefive_satm/screens/research_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/menu': (context) => MenuScreen(),
        '/pesquisa': (context) => ResearchScreen(),
        '/rank': (context) => LocaisScreen(),
        '/detalhes': (context) => Detalhes(),
        '/senha': (context) => PasswordScreen(),
        '/cadastro': (context) => RegisterScreen(),
        '/cidade': (context) => CityScreen(),
      },
      title: 'SATM',
    
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
