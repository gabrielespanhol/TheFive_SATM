import 'package:am_thefive_satm/models/locais_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detalhes extends StatelessWidget {
  LocaisModel locaisModel;

  @override
  Widget build(BuildContext context) {
    locaisModel = ModalRoute.of(context).settings.arguments;

    final voltar = Material(
      child: Padding(
        padding: const EdgeInsets.only(right: 360, top: 30),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey.shade900,
          ),
        ),
      ),
    );

    final texto = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
        child: Text(
          locaisModel.descricao,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );

    String back = locaisModel.back;
    final bandeira = Material(
      child: Container(
        width: 500,
        height: 200,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("$back"),
          ),
        ),
      ),
    );

    final selecione = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          child: Text(
            "Selecione uma data:",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );

    var dropdownValue = "2015";
    final ano = Material(
      child: Container(

          child: DropdownButton<String>(
            value: dropdownValue,
            onChanged: (value) {
          
            },

          ),

        ),
    );

    final botao = Material(

      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onTap: () =>  (
            Navigator.pushNamed(context, '/rank')
          ),

         child: Container(
           width: 230,
           height: 40,
           decoration: BoxDecoration(
             image: new DecorationImage(
              image: new AssetImage("botao.png"), 
              fit: BoxFit.cover,
           ),
          borderRadius: BorderRadius.circular(30),
         ),
        )
    ),
      )
    );

    final container = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            bandeira,
            texto,
            selecione,
            ano,
            botao,
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
              voltar,
              container,
            ],
          ),
        ),
      ),
    ));
  }
}
