// To parse this JSON data, do
//
//     final bannersModel = bannersModelFromJson(jsonString);

import 'dart:convert';

BannersModel bannersModelFromJson(String str) => BannersModel.fromJson(json.decode(str));

String bannersModelToJson(BannersModel data) => json.encode(data.toJson());

class BannersModel {
  final bool? status;
  final dynamic message;
  final List<Datum>? data;

  BannersModel({
    this.status,
    this.message,
    this.data,
  });



  factory BannersModel.fromJson(Map<String, dynamic> json) => BannersModel(
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  final int? id;
  final String? image;
  final dynamic category;
  final dynamic product;

  Datum({
    this.id,
    this.image,
    this.category,
    this.product,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    image: json["image"],
    category: json["category"],
    product: json["product"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "category": category,
    "product": product,
  };
}
