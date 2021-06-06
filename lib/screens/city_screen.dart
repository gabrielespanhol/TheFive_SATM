import 'package:am_thefive_satm/models/locais_model.dart';
import 'package:am_thefive_satm/repository/locais_repository.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cidade;

  int teste = 1;

  @override
  Widget build(BuildContext context) {
    cidade = ModalRoute.of(context).settings.arguments;

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

      // ignore: missing_return
      itemBuilder: (BuildContext ctx, int index) {
        if (teste != 0) {
          if (identical(locais[0].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[0]);
          } 
          else if (identical(locais[1].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[1]);
          }
          else if (identical(locais[2].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[2]);
          }
          else if (identical(locais[3].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[3]);
          }
          else if (identical(locais[4].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[4]);
          }
          else if (identical(locais[5].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[5]);
          }
          else if (identical(locais[6].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[6]);
          }
          else if (identical(locais[7].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[7]);
          }
          else if (identical(locais[8].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[8]);
          }
          else if (identical(locais[9].nome, cidade)) {
            teste = 0;
            return cardLocal(locais[9]);
          }
        }
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
        horizontal: 10.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
         
        
        
             gradient: LinearGradient(
              colors: [const Color(0xFFFFFFFFF), const Color(0xFFffffff)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(3.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp),
              border: Border.all(
                width: 2.5,
                color: Colors.grey.shade500
              ),
              borderRadius: BorderRadius.all(Radius.circular(70.0))
           

        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 1.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            child: Icon(
              Icons.location_city,
              color: Colors.black,
            ),
          ),
          title: Text(
            local.nome,
            style: TextStyle(
              color: Colors.black,
              
            ),
          ),
        
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
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
