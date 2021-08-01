class States {
  States({
    this.id,
    this.name,
    this.countryId,
    this.countryCode,
    this.fipsCode,
    this.iso2,
    this.latitude,
    this.longitude,
  });

  int? id;
  String? name;
  int? countryId;
  String? countryCode;
  String? fipsCode;
  String? iso2;
  double? latitude;
  double? longitude;

  factory States.fromJson(Map<String, dynamic> json) => States(
        id: json["id"],
        name: json["name"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        fipsCode: json["fips_code"],
        iso2: json["iso2"],
        latitude: json["latitude"] as double? ?? 0.0,
        longitude: json["longitude"] as double? ?? 0.0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country_id": countryId,
        "country_code": countryCode,
        "fips_code": fipsCode,
        "iso2": iso2,
        "latitude": latitude,
        "longitude": longitude,
      };
}
