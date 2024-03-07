import 'package:ayurvedic_centere/core/schemas.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Implementation {
  static Dio dio = Dio();
  static String baseUrl = "https://flutter-amr.noviindus.in/api";

  static Future<bool> login(
      {required String username, required String password}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    try {
      FormData formData = FormData.fromMap({
        'username': username,
        'password': password,
      });
      String url = '$baseUrl/Login';
      var response = await dio.post(
        url,
        data: formData,
      );

      LoginResponse loginResponse = LoginResponse.fromJson(response.data);

      sharedPreferences.setString("token", loginResponse.token);
      return true;
    } catch (error) {
      return false;
    }
  }

  static Future<bool> register({required Patient patient}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    try {
      String url = '$baseUrl/PatientUpdate';
      var response = await dio.post(
        url,
        data: patient.toJson(),
      );

      return true;
    } catch (error) {
      return false;
    }
  }

  static Future<bool> getPatientList() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = await sharedPreferences.getString("token");
    try {
      FormData formData = FormData.fromMap({'token': token});
      String url = '$baseUrl/PatientList';
      var response = await dio.get(
        url,
        data: formData,
      );
      print(response);

      return true;
    } catch (error) {
      return false;
    }
  }

  static Future<bool> getBranchList() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = await sharedPreferences.getString("token");
    try {
      FormData formData = FormData.fromMap({'token': token});
      String url = '$baseUrl/BranchList';
      var response = await dio.get(
        url,
        data: formData,
      );
      print(response);

      return true;
    } catch (error) {
      return false;
    }
  }
}
