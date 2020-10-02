import 'dart:convert';

import 'package:http/http.dart' as http;




  

  Future loginUser(String email, String password, String hospital) async {
    String url = "https://markus-dev.herokuapp.com/api/auth/login";
    final response = await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {'email': email, 'password': password, 'hospital': hospital});
    var convertedDatatoJson = jsonDecode(response.body);
    return convertedDatatoJson;
  }
  
  Future verifyUrl(String url) async {
    String url = "https://markus-dev.herokuapp.com/api/auth/workspace";
    final response = await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {'string': url});
    var convertedDatatoJson = jsonDecode(response.body);
    return convertedDatatoJson;
  }

