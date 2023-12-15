/* import 'package:dio/dio.dart';
import 'package:adopet_app/src/constants/http_config.dart';
import 'package:adopet_app/src/models/index.dart';

class PerdidoService {
  Future<Map<String, dynamic>> registerNewPerdido(Perdido perdido) async {
    try {
      final data = Perdido.toMap();
      print(data);
      final response = await DioConfig.dio.post('/api/v1/perdido', data: data);
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
 */

import 'package:adopet_app/src/constants/http_config.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/shared_preferences/user_preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PerdidoService extends ChangeNotifier {
  List<Perdido> perdidoList = [];
  List<Perdido> perdidoPerroList = [];
  List<Perdido> perdidoGatoList = [];
  List<Perdido> perdidoAveList = [];
  List<Perdido> perdidoOtroList = [];

  bool isLoading = false;

  PerdidoService() {
    getPerdidos();
  }

  Future<bool> getPerdidos() async {
    isLoading = true;
    try {
      final dio = DioConfig.dio;
      final response = await dio.get('/api/v1/perdido');
      final List<dynamic> json = response.data;
      perdidoList = json.map((dynamic json) {
        if (json['especie'] == 'Perro') {
          perdidoPerroList.add(Perdido.fromJson(json));
        } else if (json['especie'] == 'Gato') {
          perdidoGatoList.add(Perdido.fromJson(json));
        } else if (json['especie'] == 'Ave') {
          perdidoAveList.add(Perdido.fromJson(json));
        } else {
          perdidoOtroList.add(Perdido.fromJson(json));
        }
        return Perdido.fromJson(json);
      }).toList();
      isLoading = false;
      return true;
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> registerNewPerdido(Perdido perdido) async {
    isLoading = true;
    final prefs = UserPreferences();
    try {
      final dio = DioConfig.dio;
      dio.options.headers["x-access-token"] = prefs.token;
      final data = {
        "nombre": perdido.nombre,
        "descripcion": perdido.descripcion,
        "especie": perdido.especie,
        "raza": perdido.raza,
        "edad": perdido.edad,
        "image": perdido.image,
        "ultima_vez": perdido.ultima_vez,
        "recompensa": perdido.recompensa,
      };
      final response = await DioConfig.dio.post('/api/v1/perdido', data: data);
      print(response.data);
      perdidoList.add(perdido);
      isLoading = false;
      return true;
    } on DioException catch (e) {
      print(e);
      isLoading = false;
      notifyListeners();
      return false;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> actualizarDatosPerdidoSocket(Perdido perdido) async {
    perdidoGatoList = setUpdateListPerdido(perdidoGatoList, perdido);
    isLoading = false;
    notifyListeners();
  }

  List<Perdido> setUpdateListPerdido(
      List<Perdido> perdidoList, Perdido nuevoPerdido) {
    return [nuevoPerdido, ...perdidoList];
  }
}
