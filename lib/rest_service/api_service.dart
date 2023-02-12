import 'dart:convert';

import 'package:finews_api/pigeon.dart';
import 'package:http/http.dart';

class ApiService {
  final baseUrl = "http://10.0.2.2:3001/";

  dynamic _rawApiCall(String endpoint) async {
    try {
      final response = await get(Uri.parse(baseUrl + endpoint));
      return jsonDecode(response.body);
    } catch (e) {
      print (e.toString()); //TODO error handling
      return null;
    }
  }

  dynamic getNews() async {
    return _rawApiCall("news");
  }
}
