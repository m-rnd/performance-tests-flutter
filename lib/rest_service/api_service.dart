import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:signposts/signposts.dart' as signposts;

class ApiService {
  //final baseUrl =
  //  Platform.isAndroid ? "http://10.0.2.2:3001/" : "http://0.0.0.0:3001/";

  final baseUrl = "http://10.102.17.45:3001/";
  //final baseUrl = "http://192.168.178.39:3001/";

  dynamic _rawApiCall(String endpoint) async {
    try {
      signposts.Interval interval = signposts.Interval('start _rawApiCall.get');
      final response = await get(Uri.parse(baseUrl + endpoint));
      interval.end('end _rawApiCall.get');

      signposts.Interval interval2 =
          signposts.Interval('start _rawApiCall.jsonDecode');
      final json = jsonDecode(response.body);
      interval2.end('end _rawApiCall.jsonDecode');

      return json;
    } catch (e) {
      print(e.toString()); //TODO error handling
      return null;
    }
  }

  dynamic getNews() async {
    return _rawApiCall("news");
  }
}
