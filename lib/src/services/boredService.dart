import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';

List<BoredActivity> boredActivityFromJson(String str) =>
    List<BoredActivity>.from(
        json.decode(str).map((x) => BoredActivity.fromJson(x)));

String boredActivityToJson(List<BoredActivity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BoredActivity {
  BoredActivity({
    required this.createdAt,
    required this.name,
    required this.title,
    required this.data,
    required this.id,
  });

  DateTime createdAt;
  String name;
  String title;
  int data;
  String id;

  factory BoredActivity.fromJson(Map<String, dynamic> json) => BoredActivity(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        title: json["title"],
        data: json["data"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "title": title,
        "data": data,
        "id": id,
      };
}

class BoredService {
  // Future<List<BoredActivity>> getBoredActivity() async {
  Future<Either<Exception, List<BoredActivity>>> getBoredActivity() async {
    final response = await get(
        Uri.parse('https://629ddf6cc6ef9335c0a8ce7c.mockapi.io/users'));
    final activity = boredActivityFromJson(response.body);
    // log(response.body);
    // return activity;
    return Right(activity);
  }
}
