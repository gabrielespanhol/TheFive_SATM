import 'dart:convert';

class LocaisModel {
  int id;
  String nome;
  int nota;
  String descricao;
  String back;

  LocaisModel({
    this.id,
    this.nome,
    this.nota,
    this.descricao,
    this.back,
  });


  LocaisModel LocaisModelFromMap(String str) =>
      LocaisModel.fromMap(json.decode(str));

  String LocaisModelToMap(LocaisModel data) => json.encode(data.toMap());

  factory LocaisModel.fromMap(Map<String, dynamic> json) => LocaisModel(
        id: (json["id"] is int) ? json["id"] : int.parse(json["id"]),
        nome: json["nome"],
        nota: json["nota"],
        descricao: json["descricao"],
        back: json["back"]
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "nota": nota,
        "descricao": descricao,
        "back": back,
      };
}
