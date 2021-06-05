import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  PasswordScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _PasswordScreenState();

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final ou = Material(
      child: Text(
        "OU",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff38b6ff),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final phoneField = TextField(
      obscureText: false,
      keyboardType: TextInputType.number,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Telefone",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final conta = Material(
        child: GestureDetector(
      onTap: () => (Navigator.pushNamed(context, '/')),
      child: Text(
        "Voltar",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff38b6ff),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));

    final passwordButon = Material(
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
              content: Text(
                "Senha nova Solicitada",
                textAlign: TextAlign.center,
              ),
              duration: const Duration(milliseconds: 1500),
              backgroundColor: Color(0xff38b6ff),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 200,
            ),
          );
        },
        child: Text("Solicitar Senha",
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
            emailField,
            SizedBox(height: 10),
            ou,
            SizedBox(height: 10),
            phoneField,
            SizedBox(height: 20),
            passwordButon,
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
