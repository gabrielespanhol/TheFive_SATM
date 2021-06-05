import 'package:am_thefive_satm/models/locais_model.dart';
import 'package:am_thefive_satm/repository/locais_repository.dart';
import 'package:flutter/material.dart';

class LocaisScreen extends StatefulWidget {
  @override
  _LocaisScreenState createState() => _LocaisScreenState();
}

class _LocaisScreenState extends State<LocaisScreen> {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(

       appBar: new PreferredSize(
        child: new Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          width: double.infinity,
          height: 60,
          decoration: new BoxDecoration(
           gradient: new LinearGradient(
              colors: [const Color(0xFFf648b1), const Color(0xFFfffFF)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp), 

                image: new DecorationImage(
                image: new AssetImage("appbar.png"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 360),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        preferredSize: new Size(
          MediaQuery.of(context).size.width,
          150.0,
        ),
      ),
      
      body: FutureBuilder<List<LocaisModel>>(
        future: LocaisRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
    return scaffold;
  }

  ListView buildListView(List<LocaisModel> locais) {
    return ListView.builder(
      itemCount: locais == null ? 0 : locais.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardLocal(locais[index]);
      },
    );
  }

  Card cardLocal(LocaisModel local) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 7.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.blue,
          ]
        )
        
        /**
           *  gradient: LinearGradient(
              colors: [const Color(0xFFFFFFFFF), const Color(0xFFa3ddff)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(3.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp),
              border: Border.all(
                width: 2.5,
                color: Colors.lightBlue
              ),
              borderRadius: BorderRadius.all(Radius.circular(70.0))
           */

        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Icon(
              Icons.location_city,
              color: Colors.white,
            ),
          ),
          title: Text(
            local.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
             
              Expanded(
                flex: 0,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 0),
                    child: Icon(
                      Icons.cake,
                      color: Colors.pink.shade50,
                    )),
              ),
             
            ],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detalhes",
              arguments: local,
            );
          },
        ),
      ),
    );
  }
}
