import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _RegisterScreenState();
  bool isCheckedF = false;
  bool isCheckedM = false;

  @override
  Widget build(BuildContext context) {
    final fullnameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome Completo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final emailField = TextField(
     obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final phoneField = TextField(
      keyboardType: TextInputType.number,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Telefone",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final sexoField = Material(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Checkbox(
                onChanged: (bool resp) {
                  setState(() {
                    isCheckedF = resp;
                  });
                },
                value: isCheckedF,
              ),
              new Text("Feminino",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Checkbox(
                        onChanged: (bool resp) {
                          setState(() {
                            isCheckedM = resp;
                          });
                        },
                        value: isCheckedM,
                      ),
                      new Text("Masculino",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );

    final marginSexoField = Material(
      child: Padding(
        padding: EdgeInsets.only(left: 45),
        child: sexoField,
      ),
    );

    final conta = Material(
        child: GestureDetector(
        onTap: () =>  (
          Navigator.pushNamed(
            context, '/'
            )  
        ),
       child :Text("Já tenho conta",
        textAlign: TextAlign.center,
         style: TextStyle(
           color: Color(0xff38b6ff),
           fontSize: 18,
           fontWeight: FontWeight.bold,
         ),
      ),
      )

    );

    final registerButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff38b6ff),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/",
          );
          ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Registrado com Sucesso",
                      textAlign: TextAlign.center,
                    ),
                    duration: const Duration(milliseconds: 1500),
                    backgroundColor: Color(0xff38b6ff),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    width: 200,
                  ),
                );
        },
        child: Text("Registrar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final container = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 155.0,
              child: Container(
                width: 300,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("SATM_ICON_5.gif"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            fullnameField,
            SizedBox(height: 20),
            emailField,
            SizedBox(height: 20),
            passwordField,
            SizedBox(height: 20),
            phoneField,
            SizedBox(height: 10),
            marginSexoField,
            SizedBox(height: 20),
            registerButon,
            SizedBox(height: 20),
            conta,
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
              //new GradientAppBaar(""),
              container,
            ],
          ),
        ),
      ),
    ));
  }
}
