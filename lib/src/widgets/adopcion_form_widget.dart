import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/services/index.dart';
import 'package:adopet_app/src/ui/index.dart';
import 'package:http/http.dart' as http;

class AdopcionForm extends StatefulWidget {
  AdopcionForm({super.key});

  @override
  State<AdopcionForm> createState() => _AdopcionFormState();
}

class _AdopcionFormState extends State<AdopcionForm> {
  final adopcionService = AdopcionService();

  /* final TextEditingController nombreController = TextEditingController();
  final TextEditingController descripcionController = TextEditingController(); */
  String animalValue = 'Perro';

  /* final TextEditingController razaController = TextEditingController();
  final TextEditingController edadController = TextEditingController();
  final TextEditingController mesesController = TextEditingController();
  final TextEditingController energiaController = TextEditingController(); */
  List<File> fotos = [];

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        fotos.add(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final registerForm = Provider.of<AdopcionFormController>(context);
    return Form(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          TextFormField(
            /* controller: nombreController, */
            onChanged: (value) => registerForm.adopcion.nombre = value,
            decoration: InputDecoration(
              labelText: 'Nombre',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            /* controller: descripcionController, */
            onChanged: (value) => registerForm.adopcion.descripcion = value,
            decoration: InputDecoration(
              labelText: 'Descripción',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          DropdownButton<String>(
            value: animalValue,
            onChanged: (value) {
              setState(() {
                animalValue = value!;
              });
            },
            items: <String>['Perro', 'Gato', 'Ave', 'Otro'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 10),
          TextFormField(
            /* controller: razaController, */
            onChanged: (value) => registerForm.adopcion.raza = value,
            decoration: InputDecoration(
              labelText: 'Raza',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            /* controller: edadController, */
            onChanged: (value) => registerForm.adopcion.edad = int.parse(value),
            decoration: InputDecoration(
              labelText: 'Edad',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: _pickImage,
            child: Text('Seleccionar Fotos'),
          ),
          SizedBox(height: 10),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: fotos.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Image.file(fotos[index]);
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              print('Registrar Animal');
              // Procesar los datos del formulario y las fotos aquí
              registerForm.adopcion.especie = animalValue;
              /* if (!registerForm.isValidForm()) return; */

              /* MultipartFile image = await MultipartFile.fromFile(fotos[0].path);
              registerForm.adopcion.image = image; */
              List<http.MultipartFile> images = [];
              for (var i = 0; i < fotos.length; i++) {
                var image = await http.MultipartFile.fromPath(
                    'fieldName', fotos[i].path);
                images.add(image);
              }

              registerForm.adopcion.image = images;

              var response = await adopcionService.registerNewAdopcion(
                registerForm.adopcion,
              );
              if (response.containsKey('message')) {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(response['message']),
                    backgroundColor: Colors.green,
                  ),
                );
                /* Navigator.pushReplacementNamed(context, Routes.login); */
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(response['error']),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: Text('Registrar Animal'),
          ),
        ],
      ),
    );
  }
}
