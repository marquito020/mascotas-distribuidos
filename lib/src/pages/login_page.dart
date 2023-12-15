import 'package:adopet_app/core/app_export.dart';
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 56.v),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1,
                      height: 65.v,
                      width: 60.h,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img2,
                      height: 65.v,
                      width: 60.h,
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
                      width: 60.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img4,
                      height: 65.v,
                      width: 60.h,
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                CustomImageView(
                  imagePath: ImageConstant.imgFonte1,
                  height: 80.v,
                  width: 258.h,
                ),
                SizedBox(height: 43.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Login",
                      style: CustomTextStyles.headlineSmallOutfit,
                    ),
                  ),
                ),

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
                /* const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ), */

                // Create new account
                _newAccountButton(context),

                ChangeNotifierProvider(
                  create: (BuildContext context) =>
                      LoginFormController(User(email: "", password: "")),
                  child: LoginForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _newAccountButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Row(
              children: [
                const SizedBox(width: 5),
                Text('O', style: TextStyle(color: Colors.grey[700])),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.leadingCreateAccount);
                  },
                  child: Text(
                    'crear una cuenta',
                    style: CustomTextStyles.bodyMediumRobotoBlue400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
