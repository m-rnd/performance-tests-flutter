import 'package:finews_api/news/news_api.dart';
import 'package:finews_api/pigeon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  String buildMode = kReleaseMode
      ? "release"
      : kProfileMode
          ? "profile"
          : "debug";
  print("Flutter running in $buildMode mode.");

  FlutterNewsApi.setup(NewsApi());
}
