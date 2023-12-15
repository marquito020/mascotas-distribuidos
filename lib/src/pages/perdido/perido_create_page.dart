import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/widgets/perdido_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrarPerdidoPage extends StatefulWidget {
  const RegistrarPerdidoPage({super.key});

  @override
  _RegistrarPerdidoPageState createState() => _RegistrarPerdidoPageState();
}

class _RegistrarPerdidoPageState extends State<RegistrarPerdidoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Animal Perdido'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10,
          ),
          child: ChangeNotifierProvider(
            create: (BuildContext context) => PerdidoFormController(Perdido(
                nombre: "",
                descripcion: "",
                raza: "",
                especie: "",
                edad: 0,
                ultima_vez: "",
                recompensa: "",
                image: [])),
            child: const PerdidoForm(),
          ),
        ),
      ),
    );
  }
}
