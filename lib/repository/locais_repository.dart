
import 'package:am_thefive_satm/models/locais_model.dart';

import 'database.dart';

// ignore: camel_case_types
class LocaisRepository {
  Future<List<LocaisModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    // ignore: deprecated_member_use
    List<LocaisModel> locais = new List<LocaisModel>();

    if (db.created) {
      // ignore: deprecated_member_use
      locais = new List<LocaisModel>();
      locais.add(
        new LocaisModel(
            id: 1,
            nome: 'São Paulo',
            aniversario: '25 de Janeiro',
            maisAmado: 1.0,
            estrelas: 5,
            historia:'São Paulo, está entre as cidades mais populosas do mundo, com diversas instituições culturais e uma rica tradição arquitetônica. Ao pensar em São Paulo como um destino turístico, muita gente associa a cidade aos negócios. No entanto, a capital paulista oferece muito mais do que centros para convenções, reuniões ou congressos.',
            back: 'saopaulo.jpeg',
        ),
            
      );
    }

    return new Future.value(locais);
  }
}
