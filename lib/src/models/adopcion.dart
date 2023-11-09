import 'dart:convert';
import 'package:http/http.dart';

class Adopcion {
  String nombre;
  String descripcion;
  String especie;
  String raza;
  int edad;
  List<MultipartFile> image; // Cambiado de List<MultipartFile>?

  Adopcion({
    required this.nombre,
    required this.descripcion,
    required this.especie,
    required this.raza,
    required this.edad,
    required this.image, // Cambiado de this.image?,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'descripcion': descripcion,
      'especie': especie,
      'raza': raza,
      'edad': edad,
      'image': image?.map((image) => {'filename': image.filename}).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());
}
