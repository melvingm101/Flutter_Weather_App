import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TempText extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TempState();
}

class TempState extends State<TempText>{
  var summary;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      getTemperature(),
      textAlign: TextAlign.center,
      style: new TextStyle(fontSize: 250.0, color: Colors.white),
    );
  }

  String getTemperature(){
    summary = loadData();
    print(summary);
  }

  loadData() async {
    String dataURL = "https://api.darksky.net/forecast/e3fc3946d3801f9454372cb7d0d58403/37.8267,-122.4233";
    http.Response response = await http.get(dataURL);
    setState(() {
      var jsonBody = json.decode(response.body);
      print(jsonBody["currently"]["temperature"].ceil());
    });
  }
}