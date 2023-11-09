import 'package:dio/dio.dart';
import 'package:adopet_app/src/constants/http_config.dart';
import 'package:adopet_app/src/models/index.dart';

class RegisterService {
  Future<Map<String, dynamic>> registerNewUser(User user, Person person) async {
    try {
      final data = person.toMap();
      data['email'] = user.email;
      data['password'] = user.password;
      data['name'] = person.name;
      data['apellido'] = person.apellido;
      data['telefono'] = person.telefono;
      data['role'] = person.role;

      print(data);
      final response =
          await DioConfig.dio.post('/api/v1/user/register', data: data);
      print(response.data);
      return response.data;
    } on DioException catch (e) {
      print(e);
      if (e.response != null) {
        print(e.response?.data);
        return e.response?.data;
      }
      return {'message': "Ocurrio un error en el server"};
    }
  }
}
