import 'package:shared_preferences/shared_preferences.dart';

class AdopcionPreferences {
  static final AdopcionPreferences _instance = AdopcionPreferences._internal();
  late SharedPreferences _prefsAdop;

  factory AdopcionPreferences() => _instance;

  AdopcionPreferences._internal();

  initPrefs() async {
    _prefsAdop = await SharedPreferences.getInstance();
  }

  get prefsAdop => _prefsAdop;

  String get nombre => _prefsAdop.getString('nombre') ?? '';
  String get descripcion => _prefsAdop.getString('descripcion') ?? '';
  String get especie => _prefsAdop.getString('especie') ?? '';
  String get raza => _prefsAdop.getString('raza') ?? '';
  String get edad => _prefsAdop.getString('edad') ?? '';
  String get role => _prefsAdop.getString('role') ?? '';

  set nombre(String nombre) => _prefsAdop.setString('nombre', nombre);
  set descripcion(String descripcion) =>
      _prefsAdop.setString('descripcion', descripcion);
  set especie(String especie) => _prefsAdop.setString('especie', especie);
  set raza(String raza) => _prefsAdop.setString('raza', raza);
  set edad(String edad) => _prefsAdop.setString('edad', edad);
  set role(String role) => _prefsAdop.setString('role', role);

  static void saveAdopcionPreferences(Map<String, dynamic> dataMap) {
    final prefsAdop = AdopcionPreferences();

    prefsAdop.nombre = dataMap['nombre'];
    prefsAdop.descripcion = dataMap['user']['_descripcion'];
    prefsAdop.especie = dataMap['user']['especie'];
    prefsAdop.raza = dataMap['user']['raza'];
    prefsAdop.edad = dataMap['user']['edad'];
    prefsAdop.role = dataMap['user']['role'];
  }

  void clearAdoptar() {
    _prefsAdop.setString('nombre', '');
    _prefsAdop.setString('descripcion', '');
    _prefsAdop.setString('especie', '');
    _prefsAdop.setString('raza', '');
    _prefsAdop.setString('edad', '');
    _prefsAdop.setString('role', '');
  }
}
