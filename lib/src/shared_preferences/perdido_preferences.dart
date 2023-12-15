import 'package:shared_preferences/shared_preferences.dart';

class PerdidoPreferences {
  static final PerdidoPreferences _instance = PerdidoPreferences._internal();
  late SharedPreferences _prefsPerd;

  factory PerdidoPreferences() => _instance;

  PerdidoPreferences._internal();

  initPrefs() async {
    _prefsPerd = await SharedPreferences.getInstance();
  }

  get prefsPerd => _prefsPerd;

  String get nombre => _prefsPerd.getString('nombre') ?? '';
  String get descripcion => _prefsPerd.getString('descripcion') ?? '';
  String get especie => _prefsPerd.getString('especie') ?? '';
  String get raza => _prefsPerd.getString('raza') ?? '';
  int get edad => _prefsPerd.getInt('edad') ?? 0;
  String get recompensa => _prefsPerd.getString('recompensa') ?? '';
  // ignore: non_constant_identifier_names
  String get ultima_vez => _prefsPerd.getString('ultima_vez') ?? '';

  set nombre(String nombre) => _prefsPerd.setString('nombre', nombre);
  set descripcion(String descripcion) =>
      _prefsPerd.setString('descripcion', descripcion);
  set especie(String especie) => _prefsPerd.setString('especie', especie);
  set raza(String raza) => _prefsPerd.setString('raza', raza);
  set edad(int edad) => _prefsPerd.setInt('edad', edad);
  set recompensa(String recompensa) => _prefsPerd.setString('recompensa', recompensa);
  // ignore: non_constant_identifier_names
  set ultima_vez(String ultimaVez) => _prefsPerd.setString('ultima_vez', ultimaVez);

  static void savePerdidoPreferences(Map<String, dynamic> dataMap) {
    final prefsPerd = PerdidoPreferences();

    prefsPerd.nombre = dataMap['nombre'];
    prefsPerd.descripcion = dataMap['user']['_descripcion'];
    prefsPerd.especie = dataMap['user']['especie'];
    prefsPerd.raza = dataMap['user']['raza'];
    prefsPerd.edad = dataMap['user']['edad'];
    prefsPerd.recompensa = dataMap['user']['recompensa'];
    prefsPerd.ultima_vez = dataMap['user']['ultima_vez'];
  }

  void clearPerdtar() {
    _prefsPerd.setString('nombre', '');
    _prefsPerd.setString('descripcion', '');
    _prefsPerd.setString('especie', '');
    _prefsPerd.setString('raza', '');
    _prefsPerd.setString('edad', '');
    _prefsPerd.setString('recompensa', '');
    _prefsPerd.setString('ultima_vez', '');
  }
}
