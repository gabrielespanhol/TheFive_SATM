import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final emailField = TextField(
      obscureText: true,
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
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff000000),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/menu",
          );
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


     final password = Material(

       child: GestureDetector(
        onTap: () =>  (
          Navigator.pushNamed(
            context, '/senha'
            )
        ),

       child :Text("Esqueci a senha",
        textAlign: TextAlign.center,
         style: TextStyle(
           color: Color(0xff38b6ff),
           fontSize: 16,
           fontWeight: FontWeight.bold,
         ),
      ),
      )
    );

    final cadastro = Material(

      child: GestureDetector(
        onTap: () =>  (
          Navigator.pushNamed(
            context, '/cadastro'
            )
        ),

       child :Text("Cadastrar",
        textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 16,
           color: Color(0xff38b6ff),
           fontWeight: FontWeight.bold
         ),
      ),
      )
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage("SATM_ICON_5.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0,),
                loginButon,
                SizedBox(height: 15.0,),
                password,
                SizedBox(height: 10.0,),
                cadastro,
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
}
