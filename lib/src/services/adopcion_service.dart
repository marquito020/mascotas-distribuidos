import 'package:adopet_app/src/shared_preferences/user_preferences.dart';
import 'package:dio/dio.dart';
import 'package:adopet_app/src/constants/http_config.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:flutter/material.dart';

class AdopcionService extends ChangeNotifier {
  List<Adopcion> adopcioList = [];
  List<Adopcion> adopcioPerroList = [];
  List<Adopcion> adopcioGatoList = [];
  List<Adopcion> adopcioAveList = [];
  List<Adopcion> adopcioOtroList = [];

  bool isLoading = false;

  AdopcionService() {
    getAdopciones();
  }

  Future<bool> getAdopciones() async {
    isLoading = true;
    try {
      final dio = DioConfig.dio;
      final response = await dio.get('/api/v1/adopcion');
      final List<dynamic> json = response.data;
      /* adopcioList =
          json.map((dynamic json) => Adopcion.fromJson(json)).toList(); */
      adopcioList = json.map((dynamic json) {
        if (json['especie'] == 'Perro') {
          adopcioPerroList.add(Adopcion.fromJson(json));
        } else if (json['especie'] == 'Gato') {
          adopcioGatoList.add(Adopcion.fromJson(json));
        } else if (json['especie'] == 'Ave') {
          adopcioAveList.add(Adopcion.fromJson(json));
        } else {
          adopcioOtroList.add(Adopcion.fromJson(json));
        }
        return Adopcion.fromJson(json);
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

  Future<bool> registerNewAdopcion(Adopcion adopcion) async {
    isLoading = true;
    final prefs = UserPreferences();
    try {
      final dio = DioConfig.dio;
      dio.options.headers["x-access-token"] = prefs.token;
      final data = {
        "nombre": adopcion.nombre,
        "raza": adopcion.raza,
        "edad": adopcion.edad,
        "user": prefs.id,
        "especie": adopcion.especie,
        "descripcion": adopcion.descripcion,
        "image": adopcion.image,
      };
      print(data);
      final response = await dio.post('/api/v1/adopcion', data: data);
      /* print(response.data);
      adopcioList.add(adopcion); */
      final adopcionResponse =
          Adopcion.fromJson(response.data['datosRegistro']);
      if (adopcionResponse.especie == 'Perro') {
        adopcioPerroList =
            setUpdateListAdopcion(adopcioPerroList, adopcionResponse);
      } else if (adopcionResponse.especie == 'Gato') {
        adopcioGatoList =
            setUpdateListAdopcion(adopcioGatoList, adopcionResponse);
      } else if (adopcionResponse.especie == 'Ave') {
        adopcioAveList =
            setUpdateListAdopcion(adopcioAveList, adopcionResponse);
      } else {
        adopcioOtroList.add(adopcionResponse);
      }

      isLoading = false;
      notifyListeners();
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

  Future<void> actualizarDatosAdopcionSocket(Adopcion adopcion) async {
    adopcioGatoList = setUpdateListAdopcion(adopcioGatoList, adopcion);
      isLoading = false;
    notifyListeners();
  }

  List<Adopcion> setUpdateListAdopcion(
      List<Adopcion> adopcionList, Adopcion nuevaAdopcion) {
    return [nuevaAdopcion, ...adopcionList];
  }
}
