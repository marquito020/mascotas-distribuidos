import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/controllers/index.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/widgets/index.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Logo
              const SizedBox(height: 50),
              const Image(
                image: AssetImage('assets/img/logo.png'),
                width: 200,
              ),
              const SizedBox(height: 50),

              //Text of Welcome
              // const Text(
              //   'Bienvenido a la aplicación!',
              //   style: TextStyle(color: Colors.black, fontSize: 16),
              // ),
              // const SizedBox(height: 10),

              // Login form
              // MultiProvider(
              //   providers: [
              //     ChangeNotifierProvider(
              //         create: (BuildContext context) =>
              //             LoginFormController(Auth(email: "", password: ""))),
              //     ChangeNotifierProvider(create: (_) => LoginService()),
              //   ],
              //   child: const LoginForm(),
              // ),
              const Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // Create new account
              _newAccountButton(context),

              ChangeNotifierProvider(
                create: (BuildContext context) =>
                    LoginFormController(User(email: "", password: "")),
                child: LoginForm(),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _newAccountButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const SizedBox(width: 5),
                Text('O', style: TextStyle(color: Colors.grey[700])),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, Routes.leading_create_account);
                  },
                  child: Text(
                    'crear una cuenta',
                    style: TextStyle(color: Colors.blue.shade700),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
