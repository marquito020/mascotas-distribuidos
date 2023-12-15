import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/services/index.dart';
import 'package:adopet_app/src/ui/index.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  final registerService = RegisterService();

  @override
  Widget build(BuildContext context) {
    final registerForm = Provider.of<RegisterFormController>(context);
    registerForm.person.role = 'user';
    /* Form: nombre, correo, password, celular */
    return Form(
      key: registerForm.formKey,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          // nombre field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.name,
              decoration: inputDecoration(
                hintText: 'Nombre',
                labelText: 'Nombre',
              ),
              onChanged: (value) => registerForm.person.name = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su nombre';
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 15),

          // apellido field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.name,
              decoration: inputDecoration(
                hintText: 'Apellido',
                labelText: 'Apellido',
              ),
              onChanged: (value) => registerForm.person.apellido = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su apellido';
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 15),

          // correo field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: inputDecoration(
                hintText: 'Email',
                labelText: 'Email',
              ),
              onChanged: (value) => registerForm.user.email = value,
              /* validator: (value) {
                String pattern =
                    r'^(([^&lt;&gt;()[\]\\.,;:\s@\"]+(\.[^&lt;&gt;()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);
                return regExp.hasMatch(value ?? '') ? null : 'Email no valido';
              }, */
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su correo';
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 15),

          // password field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: inputDecoration(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
              ),
              onChanged: (value) => registerForm.user.password = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su contraseña';
                } else if (value.length < 6) {
                  return 'La contraseña debe tener al menos 6 caracteres';
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 15),

          // celular field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.phone,
              decoration: inputDecoration(
                hintText: 'Celular',
                labelText: 'Celular',
              ),
              onChanged: (value) => registerForm.person.telefono = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su celular';
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 15),

          /* foto field */

          // submit button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () async {
                if (!registerForm.isValidForm()) return;
                var response = await registerService.registerNewUser(
                  registerForm.user,
                  registerForm.person,
                );
                if (response.containsKey('message')) {
                  // ignore: use_build_context_synchronously
                  _showDialogError(context, response['message']);
                  Navigator.pushReplacementNamed(context, Routes.login);
                } else {
                  // ignore: use_build_context_synchronously
                  _showDialogError(context, 'Usuario registrado');
                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacementNamed(context, Routes.login);
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Registrarse'))),
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Future<dynamic> _showDialogError(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          title: const Text('Error', style: TextStyle(color: Colors.red)),
          content: Row(
            children: [
              const Icon(Icons.error, color: Colors.red),
              const SizedBox(width: 5),
              Expanded(child: Text(message)),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
