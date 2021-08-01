class Country {
  Country({
    this.id,
    this.name,
    this.iso3,
    this.iso2,
    this.phonecode,
    this.latitude,
    this.longitude,
    this.emoji,
    this.emojiU,
  });

  int? id;
  String? name;
  String? iso3;
  String? iso2;
  String? phonecode;
  double? latitude;
  double? longitude;
  String? emoji;
  String? emojiU;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        name: json["name"],
        iso3: json["iso3"],
        iso2: json["iso2"],
        phonecode: json["phonecode"],
        emoji: json["emoji"],
        emojiU: json["emojiU"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "iso3": iso3,
        "iso2": iso2,
        "phonecode": phonecode,
        "latitude": latitude,
        "longitude": longitude,
        "emoji": emoji,
        "emojiU": emojiU,
      };
}
