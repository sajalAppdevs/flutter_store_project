import 'dart:convert';

import 'albums.dart';

class DataToJson {
  static List<Albums> albumsFromJson(String str) =>
      List<Albums>.from(json.decode(str).map((x) => Albums.fromJson(x)));
}
