import 'dart:convert';
import 'dart:io';
import 'package:harry_potter_collection/models/all_spells_response.dart';
import 'package:harry_potter_collection/models/house.dart';
import 'package:http/http.dart' as http;

import 'package:harry_potter_collection/models/all_houses_response.dart';
import 'package:harry_potter_collection/models/all_characters_response.dart';
import 'package:harry_potter_collection/models/character.dart';
import '../constants.dart';

class HarryPotterClient {
  final String _apiKey;

  HarryPotterClient(this._apiKey);

  Future<List<Character>> fetchAllCharactersAsFuture(
      {String name,
      String house,
      String patronus,
      String species,
      String bloodStatus,
      String role,
      String school,
      bool deathEater,
      bool dumbledoresArmy,
      bool orderOfThePhoenix,
      bool ministryOfMagic,
      String alias,
      String wand,
      String boggart,
      String animagus}) async {
    final url = "${Constants.BASE_URL}" +
        "/${Constants.CHARACTERS_URL}" +
        "?apikey=${this._apiKey}" +
        "${name != null && name.isNotEmpty ? "?name=$name" : ""}" +
        "${patronus != null && patronus.isNotEmpty ? "?patronus=$patronus" : ""}" +
        "${species != null && species.isNotEmpty ? "?species=$species" : ""}" +
        "${bloodStatus != null && bloodStatus.isNotEmpty ? "?bloodStatus=$bloodStatus" : ""}" +
        "${role != null && role.isNotEmpty ? "?role=$role" : ""}" +
        "${school != null && school.isNotEmpty ? "?school=$school" : ""}" +
        "${deathEater != null ? "?deathEater=$deathEater" : ""}" +
        "${dumbledoresArmy != null ? "?dumbledoresArmy=$dumbledoresArmy" : ""}" +
        "${orderOfThePhoenix != null ? "?orderOfThePhoenix=$orderOfThePhoenix" : ""}" +
        "${ministryOfMagic != null ? "?ministryOfMagic=$ministryOfMagic" : ""}" +
        "${alias != null && alias.isNotEmpty ? "?alias=$alias" : ""}" +
        "${wand != null && wand.isNotEmpty ? "?wand=$wand" : ""}" +
        "${boggart != null && boggart.isNotEmpty ? "?boggart=$boggart" : ""}" +
        "${animagus != null && animagus.isNotEmpty ? "?animagus=$animagus" : ""}";
    try {
      final response = await http.get(url);
      switch (response.statusCode) {
        case 200:
          var result = CharacterResponse.fromJson(jsonDecode(response.body));
          return result.characters;
        case 401:
          throw Exception(response.body.toString());
        default:
          throw Exception(response.body.toString());
      }
    } on SocketException {
      throw ("No Internet Connection.");
    }
  }

  Future<Character> fetchCharacterByIdAsFuture(String id) async {
    final url =
        "${Constants.BASE_URL}/${Constants.CHARACTERS_URL}/$id?apikey=${this._apiKey}";

    try {
      final response = await http.get(url);
      return Character.fromJson(jsonDecode(response.body));
    } on SocketException {
      throw ("No Internet Connection.");
    }
  }

  Future<HousesResponse> fetchAllHousesAsFuture() async {
    final url =
        "${Constants.BASE_URL}/${Constants.HOUSE}?apikey=${this._apiKey}";

    try {
      final response = await http.get(url);
      switch (response.statusCode) {
        case 200:
          return HousesResponse.fromJson(jsonDecode(response.body));
        case 401:
          throw Exception(response.body.toString());
        default:
          throw Exception(response.body.toString());
      }
    } on SocketException {
      throw ("No Internet Connection.");
    }
  }

  Future<House> fetchHouseByIdAsFuture(String id) async {
    final url =
        "${Constants.BASE_URL}/${Constants.HOUSE}/$id?apikey=${this._apiKey}";

    try {
      final response = await http.get(url);
      return House.fromJson(jsonDecode(response.body));
    } on SocketException {
      throw ("No Internet Connection.");
    }
  }

  Future<SpellResponse> fetchAllSpellsAsFuture() async {
    final url =
        "${Constants.BASE_URL}/${Constants.SPELL}?apikey=${this._apiKey}";

    try {
      final response = await http.get(url);
      switch (response.statusCode) {
        case 200:
          return SpellResponse.fromJson(jsonDecode(response.body));
        case 401:
          throw Exception(response.body.toString());
        default:
          throw Exception(response.body.toString());
      }
    } on SocketException {
      throw ("No Internet Connection.");
    }
  }
}
