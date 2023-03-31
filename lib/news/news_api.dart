import 'package:finews_api/pigeon.dart';
import 'package:finews_api/rest_service/api_service.dart';

import 'package:signposts/signposts.dart' as signposts;

class NewsApi implements FlutterNewsApi {
  final ApiService _api = ApiService();

  @override
  Future<List<FlutterApiNewsEntity?>> getNews() async {
    final jsonNews = await _api.getNews();
    if (jsonNews == null) return [];

    // Umwandlung von JSON zu Dart Objekt erfolgt hier manuell
    signposts.Interval interval = signposts.Interval('start getNews.fromJSON');
    final news = (jsonNews as List<dynamic>).map((e) => fromJSON(e)).toList();
    interval.end('end getNews.fromJSON');

    return news;
  }
}

FlutterApiNewsEntity fromJSON(Map json) {
  return FlutterApiNewsEntity(title: json["title"]);
}
