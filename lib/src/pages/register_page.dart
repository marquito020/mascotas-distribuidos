import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/widgets/index.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/img/logo.png'),
                width: 100,
              ),
              const SizedBox(height: 20),
              /* Cree su cuenta */
              Text(
                'Cree su cuenta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // Login form
              ChangeNotifierProvider(
                create: (BuildContext context) => RegisterFormController(
                    User(email: "", password: ""),
                    Person(name: "",apellido: "", telefono: "", role: "")),
                child: RegisterForm(),
              ),

              const SizedBox(height: 50),

              // Login page
              _loginButton(context),
            ],
          ),
        ),
      )),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(thickness: 0.5, color: Colors.grey[400]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const SizedBox(width: 5),
                Text('Tienes una cuenta?',
                    style: TextStyle(color: Colors.grey[700])),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                  child: Text(
                    'Inciar sesión',
                    style: TextStyle(
                      color: Colors.blue.shade700,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Divider(thickness: 0.5, color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
