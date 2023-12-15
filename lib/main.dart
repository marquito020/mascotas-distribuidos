import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/services/index.dart';
import 'package:adopet_app/src/shared_preferences/adopcion_preferences.dart';
import 'package:adopet_app/src/shared_preferences/perdido_preferences.dart';
import 'package:adopet_app/src/shared_preferences/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /* Shared Preferences User */
  final prefs = UserPreferences();
  await prefs.initPrefs();

  /* Shared Preferences Adopcion */
  final prefsAdop = AdopcionPreferences();
  await prefsAdop.initPrefs();

  /* Shared Preferences Perdidos */
  final prefsPer = PerdidoPreferences();
  await prefsPer.initPrefs();

  // Obtener el servicio AdopcionService
  final adopcionService = AdopcionService();

  // Obtener el servicio PerdidoService
  final perdidoService = PerdidoService();

  // Conectar al servidor de socket
  final socket = IO.io('http://192.168.171.196:5000', <String, dynamic>{
    'transports': ['websocket'],
    'autoConnect': true,
  });

  socket.connect();

  // Escuchar un evento específico
  socket.on('connect', (_) {
    print('Conectado');
  });

  socket.onDisconnect((_) {
    print('Disconnected from the socket server');
  });

  // Escuchar el evento 'actualizacionRegistrosAdopcion'
  socket.on('actualizacionRegistrosAdopcion', (data) {
    print(data);
    final dataAdopcion = data['data'];
    print(dataAdopcion);
    Adopcion adopcion = Adopcion.fromJson(data['data']);
    adopcionService.actualizarDatosAdopcionSocket(adopcion);
    // Realizar acciones con los datos recibidos
  });

  // Escuchar el evento 'actualizacionRegistrosPerdido'
  socket.on('actualizacionRegistrosPerdido', (data) {
    print(data);
    final dataPerdido = data['data'];
    print(dataPerdido);
    Perdido perdido = Perdido.fromJson(data['data']);
    perdidoService.actualizarDatosPerdidoSocket(perdido);
    // Realizar acciones con los datos recibidos
  });

  runApp(
      MyApp(adopcionService: adopcionService, perdidoService: perdidoService));
}

class MyApp extends StatelessWidget {
  final AdopcionService adopcionService;
  final PerdidoService perdidoService;

  const MyApp(
      {Key? key, required this.adopcionService, required this.perdidoService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: adopcionService),
        ChangeNotifierProvider.value(value: perdidoService),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: Routes.getRoutes(),
        initialRoute: Routes.splash,
        theme: ThemeData.light(useMaterial3: true).copyWith(
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
            foregroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
