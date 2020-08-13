class House {
  String id;
  String name;
  String mascot;
  String headOfHouse;
  String houseGhost;
  String founder;
  int iV;
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
      this.iV,
      this.school,
      this.members,
      this.values,
      this.colors});

  House.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    mascot = json['mascot'];
    headOfHouse = json['headOfHouse'];
    houseGhost = json['houseGhost'];
    founder = json['founder'];
    iV = json['__v'];
    school = json['school'];
    members = json['members'];
    values = json['values'].cast<String>();
    colors = json['colors'].cast<String>();
  }

  House.fromList(List<dynamic> list) {
    Map<String, dynamic> map = list[0];
    id = map['_id'];
    name = map['name'];
    mascot = map['mascot'];
    headOfHouse = map['headOfHouse'];
    houseGhost = map['houseGhost'];
    founder = map['founder'];
    iV = map['__v'];
    school = map['school'];
    members = map['members'];
    values = map['values'].cast<String>();
    colors = map['colors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['name'] = this.name;
    data['mascot'] = this.mascot;
    data['headOfHouse'] = this.headOfHouse;
    data['houseGhost'] = this.houseGhost;
    data['founder'] = this.founder;
    data['__v'] = this.iV;
    data['school'] = this.school;
    data['members'] = this.members;
    data['values'] = this.values;
    data['colors'] = this.colors;
    return data;
  }

  @override
  String toString() {
    return "name: $name, founder: $founder, mascot: $mascot, headOfHouse: $headOfHouse \n";
  }
}
