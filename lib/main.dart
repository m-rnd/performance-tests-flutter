import 'dart:io';

import 'package:finews_api/news/news_api.dart';
import 'package:finews_api/pigeon.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isAndroid) {
    // Intialize flutter
    WidgetsFlutterBinding.ensureInitialized();
    print("init flutter");
    FlutterNewsApi.setup(NewsApi());
  }
}
