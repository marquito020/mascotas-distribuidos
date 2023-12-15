import 'dart:convert';

class Adopcion {
  String? id;
  String nombre;
  String descripcion;
  String especie;
  String raza;
  int edad;
  List<String> image;

  Adopcion({
    this.id,
    required this.nombre,
    required this.descripcion,
    required this.especie,
    required this.raza,
    required this.edad,
    required this.image, // Cambiado de this.image?,
  });

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'nombre': nombre,
      'descripcion': descripcion,
      'especie': especie,
      'raza': raza,
      'edad': edad,
      'image': image,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Adopcion.fromJson(Map<String, dynamic> json) {
    return Adopcion(
      id: json['_id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      especie: json['especie'],
      raza: json['raza'],
      edad: json['edad'],
      image: json['image'].cast<String>(),
    );
  }
}
