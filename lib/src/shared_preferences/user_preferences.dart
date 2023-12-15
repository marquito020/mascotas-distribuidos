import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._internal();
  late SharedPreferences _prefs;

  factory UserPreferences() => _instance;

  UserPreferences._internal();

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  get prefsUser => _prefs;

  String get token => _prefs.getString('token') ?? '';
  String get id => _prefs.getString('id') ?? '';
  String get email => _prefs.getString('email') ?? '';
  String get name => _prefs.getString('name') ?? '';
  /* int get celular => _prefs.getInt('celular') ?? 0; */
  /* String get img => _prefs.getString('img') ?? ''; */
  String get role => _prefs.getString('role') ?? '';

  set token(String token) => _prefs.setString('token', token);
  set id(String id) => _prefs.setString('id', id);
  set email(String email) => _prefs.setString('email', email);
  set name(String name) => _prefs.setString('name', name);
  /* set celular(int celular) => _prefs.setInt('celular', celular); */
  /* set img(String img) => _prefs.setString('img', img); */
  set role(String role) => _prefs.setString('role', role);

  static void saveUserPreferences(Map<String, dynamic> dataMap) {
    final prefs = UserPreferences();

    prefs.token = dataMap['token'];
    prefs.id = dataMap['user']['_id'];
    prefs.email = dataMap['user']['email'];
    prefs.name = dataMap['user']['name'];
    /* prefs.celular = dataMap['user']['celular']; */
    /* prefs.img = dataMap['user']['img']; */
    prefs.role = dataMap['user']['role'];
  }

  void clearUser() {
    _prefs.setString('token', '');
    _prefs.setString('id', '');
    _prefs.setString('email', '');
    _prefs.setString('name', '');
    /* _prefs.setInt('celular', 0); */
    /* _prefs.setString('img', ''); */
    _prefs.setString('role', '');
  }
}
