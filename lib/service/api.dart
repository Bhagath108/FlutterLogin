import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  final String baseURL = "http://192.168.68.60/";

  Future<int> registration(String name, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(baseURL),
        body: jsonEncode({name: name, email: email, password: password}),
      );
      if (response.statusCode == 201) {
        return 200;
      } else {
        return 500;
      }
    } catch (e) {
      throw Error();
    }
  }
}
