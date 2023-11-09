import 'dart:convert';

class Person {
  String name;
  String apellido;
  String telefono;
  String role;

  Person({
    required this.name,
    required this.apellido,
    required this.telefono,
    required this.role,
  });

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "name": name,
        "apellido": apellido,
        "telefono": telefono,
        "role": role,
      };
}
