import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Gravity'
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: TabBarView(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromRGBO(131, 16, 98, 1.0),
                      Color.fromRGBO(249, 79, 58, 1.0)
                    ]
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 75.0, left: 5.0),
                            child: Icon(Icons.menu, size: 30.0, color: Colors.white,),
                          ),
                          Column(
                            children: <Widget>[
                              Text("Ontario", textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, color: Colors.white),),
                              Text("Saturday, 7:30pm", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20.0),)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 75.0, right: 5.0),
                            child: Icon(Icons.add, size: 25.0, color: Colors.white,),
                          ),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 120.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.wb_sunny, color: Colors.white, size: 40.0,),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text("Hot", style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white
                                  ),
                                  )
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 20.0),
                            child: Row(
                              children: <Widget>[
                                Text("39", style: TextStyle(
                                  fontSize: 200.0,
                                  color: Colors.white,
                                  fontFamily: 'Gravity',
                                ),),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("43 C", textAlign: TextAlign.right, style: TextStyle(fontSize: 40.0, color: Colors.white),),
                                    Text("29 C", textAlign: TextAlign.right, style: TextStyle(fontSize: 40.0, color: Colors.white))
                                  ],
                                )
                              ],
                            )
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                              child: Column(
                                children: <Widget>[
                                  Text("Rain?", style: TextStyle(fontSize: 35.0, color: Colors.white),),
                                  Text("0.1%", style: TextStyle(fontSize: 25.0, color: Colors.white),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                              child: Column(
                                children: <Widget>[
                                  Text("Humidity", style: TextStyle(fontSize: 35.0, color: Colors.white),),
                                  Text("0.82", style: TextStyle(fontSize: 25.0, color: Colors.white),)
                                ],
                              ),
                            )

                          ],
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
                        child: Text("Cloudy with a chance of meatballs", textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.9],
                        colors: [
                          Color.fromRGBO(131, 16, 98, 1.0),
                          Color.fromRGBO(249, 79, 58, 1.0)
                        ]
                    )
                ),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text("String number 1", style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      title: Text("String number 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("String number 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("String number 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("String number 1", style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text("String number 1", style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              )
            ]),
            bottomNavigationBar: TabBar(
              labelColor: Colors.black,
              tabs: <Widget>[
                Tab(text: "Current Weather"),
                Tab(text: "Predictions"),
              ],
            ),
          )
      ),
    );
  }
}
