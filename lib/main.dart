import 'package:flutter/material.dart';
import 'package:weather/currentWeather.dart';
import 'package:weather/models/location.dart';
import 'package:weather/pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Location> locations = [
    new Location(
        city: "Cape Town",
        country: "South Africa",
        lat: "33.9249",
        lon: "18.4241"),
    new Location(
        city: "free state",
        country: "South Africa",
        lat: "28.4541",
        lon: "26.7968"),
    new Location(
        city: "Bloemfontein",
        country: "South Africa",
        lat: "29.0852",
        lon: "26.1596"),
    new Location(
        city: "Gauteng",
        country: "South Africa",
        lat: "26.2708",
        lon: "28.1123"),
    new Location(
        city: "KwaZulu-Natal",
        country: "South Africa",
        lat: "28.5306",
        lon: "30.8958")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomePage(),
      home: CurrentWeatherPage(locations, context),
    );
  }
}
