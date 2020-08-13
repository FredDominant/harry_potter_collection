class Character {
  String id;
  String name;
  String role;
  String house;
  String school;
  bool ministryOfMagic;
  bool orderOfThePhoenix;
  bool dumbledoresArmy;
  bool deathEater;
  String bloodStatus;
  String species;

  Character(
      {this.id,
      this.name,
      this.role,
      this.house,
      this.school,
      this.ministryOfMagic,
      this.orderOfThePhoenix,
      this.dumbledoresArmy,
      this.deathEater,
      this.bloodStatus,
      this.species});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        id: json["_id"],
        name: json["name"],
        role: json["role"],
        house: json["house"],
        school: json["school"],
        ministryOfMagic: json["ministryOfMagic"],
        orderOfThePhoenix: json["orderOfThePhoenix"],
        dumbledoresArmy: json["dumbledoresArmy"],
        deathEater: json["deathEater"],
        bloodStatus: json["bloodStatus"],
        species: json["species"]);
  }
}
