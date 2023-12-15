import 'dart:io';
import 'package:adopet_app/src/shared_preferences/perdido_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/services/index.dart';

class PerdidoForm extends StatefulWidget {
  const PerdidoForm({super.key});

  @override
  State<PerdidoForm> createState() => _PerdidoFormState();
}

class _PerdidoFormState extends State<PerdidoForm> {
  final perdidoService = PerdidoService();
  String animalValue = 'Perro';
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
    final prefPerd = PerdidoPreferences();
    if (prefPerd.especie != '') {
      animalValue = prefPerd.especie;
    }
    final registerForm = Provider.of<PerdidoFormController>(context);
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            initialValue: prefPerd.nombre,
            onChanged: (value) {
              prefPerd.nombre = value;
              registerForm.perdido.nombre = value;
            },
            decoration: const InputDecoration(
              labelText: 'Nombre',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            initialValue: prefPerd.descripcion,
            onChanged: (value) {
              prefPerd.descripcion = value;
              registerForm.perdido.descripcion = value;
            },
            decoration: const InputDecoration(
              labelText: 'Descripción',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Especie:', style: TextStyle(fontSize: 16)),
          DropdownButton<String>(
            value: animalValue,
            onChanged: (value) {
              setState(() {
                if (['Perro', 'Gato', 'Ave', 'Otro'].contains(value)) {
                  animalValue = value!;
                  prefPerd.especie = value;
                  registerForm.perdido.especie = value;
                }
              });
            },
            items: <String>['Perro', 'Gato', 'Ave', 'Otro'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          TextFormField(
            initialValue: prefPerd.raza,
            onChanged: (value) {
              prefPerd.raza = value;
              registerForm.perdido.raza = value;
            },
            decoration: const InputDecoration(
              labelText: 'Raza',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            initialValue: prefPerd.edad.toString(),
            onChanged: (value) {
              final newValue = value.replaceAll(RegExp(r'[^0-9]'), '');
              registerForm.perdido.edad = int.tryParse(newValue) ?? 0;
              prefPerd.edad = int.tryParse(newValue) ?? 0;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su edad';
              }
              return null;
            },
            keyboardType: const TextInputType.numberWithOptions(
              decimal: false,
              signed: false,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9]')), // Solo permite números
            ],
            decoration: const InputDecoration(
              labelText: 'Edad',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Fotos:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 10),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount:
                fotos.length + 1, // Se agrega 1 para el ícono de selección
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == fotos.length) {
                return IconButton(
                  icon: const Icon(Icons.add), // Ícono de suma (+)
                  onPressed: _pickImage,
                );
              }
              return Stack(
                children: [
                  Image.file(fotos[index]),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        // Eliminar la imagen en la posición 'index'
                        setState(() {
                          fotos.removeAt(index);
                        });
                      },
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          /* Recompensa */
          TextFormField(
            initialValue: prefPerd.recompensa.toString(),
            onChanged: (value) {
              registerForm.perdido.recompensa = value;
              prefPerd.recompensa = value;
            },
            decoration: const InputDecoration(
              labelText: 'Recompensa',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          /* Ultima vez */
          TextFormField(
            initialValue: prefPerd.ultima_vez,
            onChanged: (value) {
              registerForm.perdido.ultima_vez = value;
              prefPerd.ultima_vez = value;
            },
            decoration: const InputDecoration(
              labelText: 'Ultima vez visto',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () async {
                // Procesar los datos del formulario y las fotos aquí
                registerForm.perdido.especie = animalValue;
                List<String> images = [];
                for (var i = 0; i < fotos.length; i++) {
                  var image = await urlCloudinary(fotos[i], context);
                  images.add(image);
                }

                registerForm.perdido.image = images;

                bool response = await perdidoService.registerNewPerdido(
                  registerForm.perdido,
                );
                if (response) {
                  // ignore: use_build_context_synchronously
                  prefPerd.clearPerdtar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Animal registrado correctamente"),
                      backgroundColor: Colors.green,
                    ),
                  );
                  Navigator.pop(context);
                } else {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Ocurrio un error"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text('Registrar Animal',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
