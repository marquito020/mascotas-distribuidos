import 'package:adopet_app/src/constants/routes.dart';
import 'package:flutter/material.dart';

class LeadingCreateAccountPage extends StatelessWidget {
  const LeadingCreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            const Center(
              child: Image(
                image: AssetImage('assets/img/logo.png'),
                width: 100,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Creando cuenta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Quiero registrarme como',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 15),
            /* Button Usuario */
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.register);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const Text('Usuario'),
            ),
            const SizedBox(height: 15),
            /* Button Cuidador */
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const Text('Cuidador'),
            ),
            const SizedBox(height: 15),
            /* Button Profesional */
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(300, 50),
              ),
              child: const Text('Profesional'),
            ),
            const SizedBox(height: 190),
            /* Button Inicar Sesion */
            /* ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.login);
            },
            child: Text('Iniciar Sesión'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(300, 50),
            ),
          ), */
          ],
        ),
        /* Button Iniciar Session */
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.login);
          },
          backgroundColor: Colors.blue,
          focusColor: Colors.blue,
          child: const Icon(Icons.arrow_forward, color: Colors.white),
        ));
  }
}
