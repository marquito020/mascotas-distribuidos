import 'package:flutter/material.dart';
import 'package:adopet_app/src/pages/index.dart';
import 'package:adopet_app/src/shared_preferences/user_preferences.dart';

class Routes {
  static const String home = 'home';
  static const String login = 'login';
  static const String register = 'register';
  static const String leading_create_account = 'leading';
  static const String registrar_animal = 'registrar_animal';

  static Map<String, WidgetBuilder> getRoutes() {
    final prefs = UserPreferences();

    return <String, WidgetBuilder>{
      login: (BuildContext context) =>
          /* prefs.token != "" ? const HomePage() : */ const LoginPage(),
      register: (BuildContext context) => const RegisterPage(),
      leading_create_account: (BuildContext context) =>
          const LeadingCreateAccountPage(),
      registrar_animal: (BuildContext context) => RegistrarAnimalPage(),
      home: (BuildContext context) => HomePage(),
      /* home: (BuildContext context) => const HomePage(),
      perfil: (BuildContext context) => const PerfilPage(),
      property: (BuildContext context) => const PropertyPage(),
      creditCard: (BuildContext context) => const CreditCardPage(),
      creditCardCreate: (BuildContext context) => const CreditCardCreatePage(),
      procedure: (BuildContext context) => const ProcedurePage(), */
    };
  }
}
