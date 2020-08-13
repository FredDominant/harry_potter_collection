import 'package:harry_potter_collection/models/character.dart';

class CharacterResponse {
  final List<Character> characters;

  CharacterResponse({this.characters});

  factory CharacterResponse.fromJson(List<Character> characters) {
    return CharacterResponse(
        characters:
            characters != null ? List<Character>.from(characters) : null);
  }

  List<dynamic> toJson() {
    List<dynamic> data = new List<Character>();
    if (this.characters != null) {
      data = this.characters;
    }
    return data;
  }
}
