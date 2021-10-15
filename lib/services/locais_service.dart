import 'package:am_thefive_satm/models/locais_model.dart';
import 'package:am_thefive_satm/services/service_config.dart';
import 'package:dio/dio.dart';

class LocaisService {
  static final String _endpoint =
      'https://6168984609e030001712c057.mockapi.io/';
  static final String _resource = 'cidades';
  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<LocaisModel>> findAllAsync() async {
    List<LocaisModel> lista = [];

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            LocaisModel locaisModel = new LocaisModel.fromMap(value);
            lista.add(locaisModel);
          },
        );
      }
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }

    return lista;
  }

  Future<int> create(LocaisModel locaisModel) async {
    try {
      locaisModel.id = 0;

      Response response = await service.create().post(
            _resource,
            data: locaisModel.toMap(), //payload
          );

      if (response.statusCode == 201) {
        locaisModel = LocaisModel.fromMap(response.data);
      }

      return locaisModel.id;
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }
  }
}

class LocalService {
  
  final resource;

  LocalService(this.resource);

  static final String _endpoint =
      'https://6168984609e030001712c057.mockapi.io/cidades/';
  
  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<LocaisModel>> findAllAsync() async {
    List<LocaisModel> lista = [];

    try {
      Response response = await service.create().get(resource);
      if (response.statusCode == 200) {
        
            LocaisModel locaisModel = new LocaisModel.fromMap(response.data);
            lista.add(locaisModel);
          
      }
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }

    return lista;
  }
}
