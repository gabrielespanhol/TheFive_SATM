
import "package:am_thefive_satm/models/locais_model.dart";

import "database.dart";

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
            nome: "São Paulo",
            nota: 8,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 2,
            nome: "Guarulhos",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 3,
            nome: "Campinas",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 4,
            nome: "São Bernardo do Campo",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 5,
            nome: "Osasco",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );


       locais.add(
        new LocaisModel(
            id: 6,
            nome: "Maua",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 7,
            nome: "Bauru",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );

      
       locais.add(
        new LocaisModel(
            id: 8,
            nome: "Carapicuíba",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );


       locais.add(
        new LocaisModel(
            id: 9,
            nome: "Barueri",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );


       locais.add(
        new LocaisModel(
            id: 10,
            nome: "Assis",
            nota: 1,
            descricao: "Abaixo você pode baixar os arquivos finaceiros do municipio como Consulta Receita Orçamentária, Relatórios da Receita Tributária e Demostrativos de receitas",
            back: "saopaulo.jpeg",
        ),  
      );
      

    }


    return new Future.value(locais);
  }
}
