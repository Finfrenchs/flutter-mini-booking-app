import 'dart:convert';

class GenerateResponseModel {
  final String? status;
  final Data? data;

  GenerateResponseModel({
    this.status,
    this.data,
  });

  factory GenerateResponseModel.fromJson(String str) =>
      GenerateResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerateResponseModel.fromMap(Map<String, dynamic> json) =>
      GenerateResponseModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": data?.toMap(),
      };
}

class Data {
  final String? origin;
  final String? destination;
  final List<TransportationOption>? transportationOptions;
  final List<String>? tips;

  Data({
    this.origin,
    this.destination,
    this.transportationOptions,
    this.tips,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        origin: json["origin"],
        destination: json["destination"],
        transportationOptions: json["transportation_options"] == null
            ? []
            : List<TransportationOption>.from(json["transportation_options"]!
                .map((x) => TransportationOption.fromMap(x))),
        tips: json["tips"] == null
            ? []
            : List<String>.from(json["tips"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "origin": origin,
        "destination": destination,
        "transportation_options": transportationOptions == null
            ? []
            : List<dynamic>.from(transportationOptions!.map((x) => x.toMap())),
        "tips": tips == null ? [] : List<dynamic>.from(tips!.map((x) => x)),
      };
}

class TransportationOption {
  final String? type;
  final String? estimatedTime;
  final String? estimatedCost;
  final List<Service>? services;
  final Details? details;

  TransportationOption({
    this.type,
    this.estimatedTime,
    this.estimatedCost,
    this.services,
    this.details,
  });

  factory TransportationOption.fromJson(String str) =>
      TransportationOption.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransportationOption.fromMap(Map<String, dynamic> json) =>
      TransportationOption(
        type: json["type"],
        estimatedTime: json["estimated_time"],
        estimatedCost: json["estimated_cost"],
        services: json["services"] == null
            ? []
            : List<Service>.from(
                json["services"]!.map((x) => Service.fromMap(x))),
        details:
            json["details"] == null ? null : Details.fromMap(json["details"]),
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "estimated_time": estimatedTime,
        "estimated_cost": estimatedCost,
        "services": services == null
            ? []
            : List<dynamic>.from(services!.map((x) => x.toMap())),
        "details": details?.toMap(),
      };
}

class Details {
  final String? busNumber;
  final String? estimatedTime;
  final String? cost;
  final String? schedule;

  Details({
    this.busNumber,
    this.estimatedTime,
    this.cost,
    this.schedule,
  });

  factory Details.fromJson(String str) => Details.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Details.fromMap(Map<String, dynamic> json) => Details(
        busNumber: json["bus_number"],
        estimatedTime: json["estimated_time"],
        cost: json["cost"],
        schedule: json["schedule"],
      );

  Map<String, dynamic> toMap() => {
        "bus_number": busNumber,
        "estimated_time": estimatedTime,
        "cost": cost,
        "schedule": schedule,
      };
}

class Service {
  final String? name;
  final String? estimatedTime;
  final String? estimatedCost;

  Service({
    this.name,
    this.estimatedTime,
    this.estimatedCost,
  });

  factory Service.fromJson(String str) => Service.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Service.fromMap(Map<String, dynamic> json) => Service(
        name: json["name"],
        estimatedTime: json["estimated_time"],
        estimatedCost: json["estimated_cost"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "estimated_time": estimatedTime,
        "estimated_cost": estimatedCost,
      };
}
