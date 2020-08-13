import 'package:harry_potter_collection/models/spell.dart';

class SpellResponse {
  final List<dynamic> spells;

  SpellResponse({this.spells});

  factory SpellResponse.fromJson(List<dynamic> spells) {
    var result = spells.map((e) => Spell.fromJson(e));
    return SpellResponse(
        spells: result != null ? List<Spell>.from(result) : null);
  }

}
