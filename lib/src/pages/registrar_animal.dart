import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrarAnimalPage extends StatefulWidget {
  const RegistrarAnimalPage({super.key});

  @override
  _RegistrarAnimalPageState createState() => _RegistrarAnimalPageState();
}

class _RegistrarAnimalPageState extends State<RegistrarAnimalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Animal'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10,
          ),
          child: ChangeNotifierProvider(
            create: (BuildContext context) => AdopcionFormController(Adopcion(
                nombre: "",
                descripcion: "",
                raza: "",
                especie: "",
                edad: 0,
                image: [])),
            child: const AdopcionForm(),
          ),
        ),
      ),
    );
  }
}
