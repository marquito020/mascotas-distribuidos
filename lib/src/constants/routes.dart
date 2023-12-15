import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/pages/perdido/perido_create_page.dart';
import 'package:adopet_app/src/pages/perdido_one_tab_container_screen/perdido_one_tab_container_screen.dart';
import 'package:adopet_app/src/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:adopet_app/src/pages/index.dart';
import 'package:adopet_app/src/shared_preferences/user_preferences.dart';

import '../pages/adoptar_one_tab_container_screen/adoptar_one_tab_container_screen.dart';

class Routes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String adoptar = '/adoptar';
  static const String perdido = '/perdido';
  static const String perfil = '/perfil';
  static const String serviciosPage = '/servicios_page';
  static const String leadingCreateAccount = '/leading';
  static const String registrar_animal = '/registrar_animal';
  static const String registrar_perdido = '/registrar_perdido';

  static Map<String, WidgetBuilder> getRoutes() {
    final prefs = UserPreferences();

    return <String, WidgetBuilder>{
      splash: (BuildContext context) => const SplashPage(),
      login: (BuildContext context) =>
          prefs.token != "" ? const HomePage() : const LoginPage(),
      register: (BuildContext context) => const RegisterPage(),
      perfil: (BuildContext context) => const PerfilPage(),
      leadingCreateAccount: (BuildContext context) =>
          const LeadingCreateAccountPage(),
      registrar_animal: (BuildContext context) => const RegistrarAnimalPage(),
      home: (BuildContext context) => const HomePage(),
      adoptar: (BuildContext context) => const AdoptarPage(),
      perdido: (BuildContext context) => const PerdidoPage(),
      registrar_perdido: (BuildContext context) => const RegistrarPerdidoPage(),

      /* home: (BuildContext context) => const HomePage(),
      perfil: (BuildContext context) => const PerfilPage(),
      property: (BuildContext context) => const PropertyPage(),
      creditCard: (BuildContext context) => const CreditCardPage(),
      creditCardCreate: (BuildContext context) => const CreditCardCreatePage(),
      procedure: (BuildContext context) => const ProcedurePage(), */
    };
  }
}
