import 'package:dio/dio.dart';
import 'package:adopet_app/src/constants/http_config.dart';
import 'package:adopet_app/src/models/index.dart';
import 'package:adopet_app/src/shared_preferences/user_preferences.dart';

class LoginService {
  // final _dio = Dio();

  // LoginService() {
  //   _configureDio();
  // }

  // void _configureDio() {
  //   _dio.options.baseUrl = HttpConfig.BASE_URL;
  //   _dio.options.connectTimeout = const Duration(seconds: 60);
  //   _dio.options.receiveTimeout = const Duration(seconds: 60);
  // _dio.options.sendTimeout = const Duration(seconds: 60);
  // }

  Future<Map<String, dynamic>> authenticate(User user) async {
    try {
      // final Map<String, String> data = {
      //   'email': user.email,
      //   'password': user.password
      // };
      // final response = await _dio.post('/api/login', data: data);
      final response =
          await DioConfig.dio.post('/api/v1/user/login', data: user.toMap());

      /* response.data['password'] = user.password; */
      print(response.data);
      UserPreferences.saveUserPreferences(response.data);

      return response.data;
    } on DioException catch (e) {
      if (e.response != null) return e.response?.data;

      return {'message': "Ocurrio un error en el server"};
    } catch (e) {
      return {'message': "Ocurrio un error en el server"};
    }
  }
}
