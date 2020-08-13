class Spell {
  String id;
  String spell;
  String type;
  String effect;

  Spell({this.id, this.spell, this.type, this.effect});

  factory Spell.fromJson(Map<String, dynamic> json) {
    return Spell(
        id: json["_id"],
        spell: json["spell"],
        type: json["type"],
        effect: json["effect"]);
  }
}
