import 'package:harry_potter_collection/models/character.dart';

class CharacterResponse {
  final List<dynamic> characters;

  CharacterResponse({this.characters});

  factory CharacterResponse.fromJson(List<dynamic> characters) {
    var result = characters.map((e) => Character.fromJson(e));
    return CharacterResponse(
        characters:
            result != null ? List<Character>.from(result) : null);
  }
}
