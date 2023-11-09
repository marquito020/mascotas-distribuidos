import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'dart:io';

class RegistrarAnimalPage extends StatefulWidget {
  @override
  _RegistrarAnimalPageState createState() => _RegistrarAnimalPageState();
}

class _RegistrarAnimalPageState extends State<RegistrarAnimalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Animal'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ChangeNotifierProvider(
            create: (BuildContext context) => AdopcionFormController(Adopcion(
              nombre: "",
              descripcion: "",
              raza: "",
              especie: "",
              edad: 0,
              image: []
            )),
            child: AdopcionForm(),
          ),
        ),
      ),
    );
  }
}
