import 'package:am_thefive_satm/components/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResearchScreen extends StatefulWidget {
  ResearchScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ResearchScreenState createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _ResearchScreenState();

  String dropdownValue = 'São Paulo';
  
  @override
  Widget build(BuildContext context) {


    final cityField = Material(
      child: Column(
        children: <Widget>[
          Text(
            "Selecione uma cidade",
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20,
              
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xFFFFFFFFF), const Color(0xFFffffff)],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(3.5, 0.0),
                    stops: [0.0, 0.5],
                    tileMode: TileMode.clamp),
                border: Border.all(width: 2.5, color: Colors.grey.shade500),
                borderRadius: BorderRadius.all(Radius.circular(70.0))),
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                  
                });
              },
              items: <String>[
                "São Paulo",
                "Guarulhos",
                "Campinas",
                "São Bernardo do Campo",
                "Osasco",
                "Maua",
                "Bauru",
                "Carapicuíba",
                "Barueri",
                "Assis",
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );

    final searchButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff000000),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/cidade",
            arguments: dropdownValue,
          );
        },
        child: Text("Pesquisar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white)),
      ),
    );

    final container = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30.0),
            cityField,
            SizedBox(height: 50.0),
            searchButon,
          ],
        ),
      ),
    );
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GradientAppBar(""),
              container,
            ],
          ),
        ),
      ),
    ));
  }
}
