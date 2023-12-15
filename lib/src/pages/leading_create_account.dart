import 'package:adopet_app/core/app_export.dart';
import 'package:adopet_app/core/utils/image_constant.dart';
import 'package:adopet_app/src/constants/routes.dart';
import 'package:adopet_app/src/widgets/index.dart';
import 'package:flutter/material.dart';

class LeadingCreateAccountPage extends StatelessWidget {
  const LeadingCreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
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
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Usuario'))),
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
