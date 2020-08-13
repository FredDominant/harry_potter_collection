class House {
  String id;
  String name;
  String mascot;
  String headOfHouse;
  String houseGhost;
  String founder;
  String school;
  List<dynamic> members;
  List<String> values;
  List<String> colors;

  House(
      {this.id,
      this.name,
      this.mascot,
      this.headOfHouse,
      this.houseGhost,
      this.founder,
      this.school,
      this.members,
      this.values,
      this.colors});

  factory House.fromJson(Map<String, dynamic> json) {
    return House(
      id: json["_id"],
      name: json["name"],
      mascot: json["mascot"],
      headOfHouse: json["headOfHouse"],
      houseGhost: json["houseGhost"],
      founder: json["founder"],
      school: json["school"],
      members: json["members"],
      values: json["values"],
      colors: json["colors"],
    );
  }
}
