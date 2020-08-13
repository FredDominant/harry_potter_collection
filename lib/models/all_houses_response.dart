import 'package:harry_potter_collection/models/house.dart';

class HousesResponse {
  final List<House> houses;

  HousesResponse({this.houses});

  factory HousesResponse.fromJson(List<House> houses) {
    return HousesResponse(
        houses: houses != null ? List<House>.from(houses) : null);
  }

  List<dynamic> toJson() {
    List<dynamic> data = new List<House>();
    if (this.houses != null) {
      data = this.houses;
    }
    return data;
  }
}
