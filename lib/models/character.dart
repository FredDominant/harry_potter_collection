class Character {
  String id;
  String name;
  String role;
  String house;
  String school;
  int iV;
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
        this.iV,
        this.ministryOfMagic,
        this.orderOfThePhoenix,
        this.dumbledoresArmy,
        this.deathEater,
        this.bloodStatus,
        this.species});

  Character.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    role = json['role'];
    house = json['house'];
    school = json['school'];
    iV = json['__v'];
    ministryOfMagic = json['ministryOfMagic'];
    orderOfThePhoenix = json['orderOfThePhoenix'];
    dumbledoresArmy = json['dumbledoresArmy'];
    deathEater = json['deathEater'];
    bloodStatus = json['bloodStatus'];
    species = json['species'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['name'] = this.name;
    data['role'] = this.role;
    data['house'] = this.house;
    data['school'] = this.school;
    data['__v'] = this.iV;
    data['ministryOfMagic'] = this.ministryOfMagic;
    data['orderOfThePhoenix'] = this.orderOfThePhoenix;
    data['dumbledoresArmy'] = this.dumbledoresArmy;
    data['deathEater'] = this.deathEater;
    data['bloodStatus'] = this.bloodStatus;
    data['species'] = this.species;
    return data;
  }

  @override
  String toString() {
    return "name: ${this.name}, house: ${this.house}, school: ${this.school}, role: ${this.role}\n";
  }
}
