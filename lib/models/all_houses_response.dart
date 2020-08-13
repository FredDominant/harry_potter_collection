import 'package:harry_potter_collection/models/house.dart';

class HousesResponse {
  final List<dynamic> houses;

  HousesResponse({this.houses});

  factory HousesResponse.fromJson(List<dynamic> houses) {
    var data = houses.map((e) => House.fromJson(e));
    return HousesResponse(
        houses: houses != null ? List<House>.from(data) : null);
  }

}
