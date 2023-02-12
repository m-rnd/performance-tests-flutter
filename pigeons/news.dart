import 'package:pigeon/pigeon.dart';

class FlutterApiNewsEntity {
  String? title;
}

@FlutterApi()
abstract class FlutterNewsApi {
  @async
  List<FlutterApiNewsEntity> getNews();
}
