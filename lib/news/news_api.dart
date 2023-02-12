import 'package:finews_api/pigeon.dart';
import 'package:finews_api/rest_service/api_service.dart';

class NewsApi implements FlutterNewsApi {
  final ApiService _api = ApiService();

  @override
  Future<List<FlutterApiNewsEntity?>> getNews() async {
    final jsonNews = await _api.getNews();
    if (jsonNews == null) return [];
    return (jsonNews as List<dynamic>).map((e) => fromJSON(e)).toList();
  }
}

FlutterApiNewsEntity fromJSON(Map json) {
  return FlutterApiNewsEntity(title: json["title"]);
}
