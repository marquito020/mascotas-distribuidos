import 'dart:convert';

class Perdido {
  String nombre;
  String descripcion;
  String especie;
  String raza;
  int edad;
  String ultima_vez;
  String recompensa;
  List<String> image; // Cambiado de List<MultipartFile>?

  Perdido({
    required this.nombre,
    required this.descripcion,
    required this.especie,
    required this.raza,
    required this.edad,
    required this.image, // Cambiado de this.image?,
    required this.ultima_vez,
    required this.recompensa,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'descripcion': descripcion,
      'especie': especie,
      'raza': raza,
      'edad': edad,
      'image': image,
      'ultima_vez': ultima_vez,
      'recompensa': recompensa,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Perdido.fromJson(Map<String, dynamic> json) {
    return Perdido(
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      especie: json['especie'],
      raza: json['raza'],
      edad: json['edad'],
      image: json['image'].cast<String>(),
      ultima_vez: json['ultima_vez'],
      recompensa: json['recompensa'],
    );
  }
}
