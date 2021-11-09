import 'package:flutter/foundation.dart';

class Displaydata {
  String? name;
  String? continent;

  String? native;

  String? capital;

  String? currency;
  List? languages;

  String? emojiU;

  String? emoji;

  String? phone;

  // Displaydata(
  //     this.name,
  //     this.native,
  //     this.continent,
  //     this.capital,
  //     this.currency,/
  //     this.languages,
  //     this.emojiU,
  //     this.emoji,
  //     this.phone);

   Displaydata.fromJson(Map<String, dynamic> json,Map buffer) {
    this.name = json['name'];
    this.native = json['native'];
    this.continent = buffer[json['continent']];
    this.capital = json['capital'];
    this.currency = json['currency'];
    this.languages = json["languages"];
    this.emojiU = json['emojiU'];
    this.emoji = json['emoji'];
    this.phone = json['phone'];
    print(this.continent);

  }
}
