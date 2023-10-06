import 'package:http/http.dart' as http;

import 'albums.dart';
import 'convert_data.dart';

class GetData {
  Future<List<Albums>> getFetchedAlbums([int startIndex = 0]) async {
    final response = await http
        .get(Uri.parse("https://www.jsonplaceholder.typicode.com/albums"));

    final myAlbums = DataToJson.albumsFromJson(response.body);
    return myAlbums;
  }
}
