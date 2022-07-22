import 'dart:js';
import 'package:flutter/material.dart';
import 'package:weather/currentWeather.dart';
import 'package:weather/models/location.dart';
import 'package:weather/Home.dart';
import 'package:weather/routes/Routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutesPath.homePage,
      onGenerateRoute: RoutesPath.generateRoute,
    );
  }
}
