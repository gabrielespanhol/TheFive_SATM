
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
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "8.png",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 2,
            nome: "Guarulhos",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "9.png",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 3,
            nome: "Campinas",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "10.png",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 4,
            nome: "São Bernardo do Campo",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "11.png",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 5,
            nome: "Osasco",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "12.png",
        ),  
      );


       locais.add(
        new LocaisModel(
            id: 6,
            nome: "Mauá",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "13.png",
        ),  
      );

       locais.add(
        new LocaisModel(
            id: 7,
            nome: "Bauru",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "14.png",
        ),  
      );

      
       locais.add(
        new LocaisModel(
            id: 8,
            nome: "Carapicuíba",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "15.png",
        ),  
      );


       locais.add(
        new LocaisModel(
            id: 9,
            nome: "Barueri",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "16.png",
        ),  
      );


       locais.add(
        new LocaisModel(
            id: 10,
            nome: "Assis",
            nota: 1,
            descricao: "O Portal da Transparência é uma ferramenta que facilita o acesso da população, de forma atualizada, a dados e informações sobre a Administração Pública.\nInformações de gastos e despesas dos órgãos da Administração Indireta, como autarquias e empresas municipais, também poderão ser encontradas no portal. \n\nAbaixo você pode baixar os arquivos finaceiros do município para maiores informações.",
            back: "17.png",
        ),  
      );
      

    }


    return new Future.value(locais);
  }
}
