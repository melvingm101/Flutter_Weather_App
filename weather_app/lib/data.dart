import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';



class Data{
  Future<String> loadData() async {
    String dataURL = "https://api.darksky.net/forecast/e3fc3946d3801f9454372cb7d0d58403/25.2048,55.2708";
    http.Response response = await http.get(Uri.encodeFull(dataURL),
    headers: {
      "Accept": "application/json"
    });
    var widgets = json.decode(response.body);
    return widgets;
  }
}

class Post {
  final String summary;
  final double temperature;

  Post({this.summary, this.temperature});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      summary: json['currently']['summary'],
      temperature: json['currently']['temperature'],
    );
  }
}