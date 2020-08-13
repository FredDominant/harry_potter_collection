import 'package:http/http.dart' as http;

import 'package:harry_potter_collection/models/character.dart';
import '../constants.dart';

class HarryPotter {

  final String _apiKey;

  HarryPotter(this._apiKey);

  Future<List<Character>> fetchAllCharactersAsFuture() async {
    final url = "${Constants.BASE_URL}/${Constants.CHARACTERS_URL}?apikey=${this
        ._apiKey}";

    final response = await http.get(url);
    switch (response.statusCode) {
      case 200: {

      }
    }
  }
}