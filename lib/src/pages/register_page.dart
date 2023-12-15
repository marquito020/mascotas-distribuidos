import 'package:adopet_app/core/app_export.dart';
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
      /* Volver atras */
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, Routes.leadingCreateAccount);
            },
          ),
          title: const Text(
            'Crear cuenta',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )),
      bottomNavigationBar: _loginButton(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1,
                    height: 65.v,
                    width: 51.h,
                    margin: EdgeInsets.only(top: 2.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img2,
                    height: 65.v,
                    width: 50.h,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img3,
                    height: 65.v,
                    width: 49.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img4,
                    height: 65.v,
                    width: 48.h,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                ],
              ),
              /* const SizedBox(height: 15),
              /* Cree su cuenta */
              const Text(
                'Cree su cuenta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ), */
              const SizedBox(height: 15),
              // Login form
              ChangeNotifierProvider(
                create: (BuildContext context) => RegisterFormController(
                    User(email: "", password: ""),
                    Person(name: "", apellido: "", telefono: "", role: "")),
                child: RegisterForm(),
              ),

              const SizedBox(height: 5),

              // Login page
              /* _loginButton(context), */
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
