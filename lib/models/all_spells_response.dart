import 'package:harry_potter_collection/models/spell.dart';

class SpellResponse {
  final List<Spell> spells;

  SpellResponse({this.spells});

  factory SpellResponse.fromJson(List<Spell> spells) {
    return SpellResponse(
        spells: spells != null ? List<Spell>.from(spells) : null);
  }

  List<dynamic> toJson() {
    List<dynamic> data = new List<Spell>();
    if (this.spells != null) {
      data = this.spells;
    }
    return data;
  }
}
