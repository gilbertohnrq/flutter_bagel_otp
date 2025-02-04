import 'package:bagel_db/bagel_db.dart';
import 'package:dio/dio.dart';

import '.environment.dart';

late BagelDB db;

Future<void> init() async {
  db = await BagelDB.init(token: bagelToken, logCurl: true);
}

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://europe-west1-vizo-feed-me.cloudfunctions.net',
  ),
);
