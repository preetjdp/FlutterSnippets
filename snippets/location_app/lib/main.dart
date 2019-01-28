import 'package:flutter/material.dart';
import 'package:location/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var currentLocation = <String, double>{};
  var location = new Location();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(currentLocation["latitude"].toString() +
            ' , ' +
            currentLocation["longitude"].toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          currentLocation = await location.getLocation();
          print(currentLocation);
          setState(() {
            
          });
        },
        child: Icon(Icons.add_circle),
      ),
    );
  }
}
