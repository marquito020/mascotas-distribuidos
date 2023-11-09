import 'package:dio/dio.dart';
import 'package:adopet_app/src/constants/http_config.dart';
import 'package:adopet_app/src/models/index.dart';

class AdopcionService {
  Future<Map<String, dynamic>> registerNewAdopcion(Adopcion adopcion) async {
    try {
      final data = adopcion.toMap();
      print(data);
      final response = await DioConfig.dio.post('/api/v1/adopcion', data: data);
      print(response.data);
      return response.data;
    } on DioException catch (e) {
      print(e);
      if (e.response != null) {
        print(e.response?.data);
        return e.response?.data;
      }
      return {'message': "Ocurrio un error en el server"};
    }
  }
}
