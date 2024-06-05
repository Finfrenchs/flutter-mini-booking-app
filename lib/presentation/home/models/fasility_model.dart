import 'dart:convert';

class FacilityModel {
  final String? name;

  FacilityModel({
    this.name,
  });

  factory FacilityModel.fromJson(String str) =>
      FacilityModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FacilityModel.fromMap(Map<String, dynamic> json) => FacilityModel(
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
      };
}
