import 'dart:math';
import 'package:am_thefive_satm/components/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final menu = Material(
      child: Text(
        "Selecione uma opção",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );

    final pesquisaCard = new Container(
      width: 400.0,
      height: 65.0,
      margin: new EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFFFFFFFFF), const Color(0xFFffffff)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(3.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp),
          border: Border.all(width: 2.5, color: Colors.grey.shade500),
          borderRadius: BorderRadius.all(Radius.circular(70.0))),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
          leading: Container(
            padding: EdgeInsets.only(right: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Pesquisar Cidade',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/pesquisa",
            );
          },
        ),
      ),
    );

    final cidadeAleatoria = new Container(
      width: 400.0,
      height: 65.0,
      margin: new EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFFFFFFFFF), const Color(0xFFffffff)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(3.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp),
          border: Border.all(width: 2.5, color: Colors.grey.shade500),
          borderRadius: BorderRadius.all(Radius.circular(70.0))),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
          leading: Container(
            padding: EdgeInsets.only(right: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Cidade Aleatória',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onTap: () {
            var value = [
              "São Paulo",
              "Guarulhos",
              "Campinas",
              "São Bernardo do Campo",
              "Osasco",
              "Mauá",
              "Bauru",
              "Carapicuíba",
              "Barueri",
              "Assis",
            ];
            var rng = new Random();
            var i = rng.nextInt(10).toInt();
            print(i);
            Navigator.pushNamed(
              context,
              "/cidade",
              arguments: value[i],
            );
          },
        ),
      ),
    );

    final rankCard = new Container(
      width: 400.0,
      height: 65.0,
      margin: new EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFFFFFFFFF), const Color(0xFFffffff)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(3.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp),
          border: Border.all(width: 2.5, color: Colors.grey.shade500),
          borderRadius: BorderRadius.all(Radius.circular(70.0))),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
          leading: Container(
            padding: EdgeInsets.only(right: 10.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Rank Cidades',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/rank",
            );
          },
        ),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new GradientAppBar(""),
                SizedBox(height: 45.0),
                menu,
                SizedBox(height: 35.0),
                pesquisaCard,
                SizedBox(height: 25.0),
                cidadeAleatoria,
                SizedBox(height: 25.0),
                rankCard
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
