import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/shared_preferences/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = UserPreferences();
  await prefs.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoutes(),
      initialRoute: Routes.login,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: GoogleFonts.montserratTextTheme(),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          // color: Color(0xffFFFBFE),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
          foregroundColor: Colors.black,
        ),
        // scaffoldBackgroundColor: const Color(0xffFFFBFE),
      ),
    );
  }
}
