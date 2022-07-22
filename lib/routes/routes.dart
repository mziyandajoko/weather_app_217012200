import 'package:flutter/material.dart';
import 'package:weather/models/location.dart';

import '../Home.dart';
import '../currentWeather.dart';

class RoutesPath {
  static const String homePage = '/';
  static const String currentWeatherPage = './currentWeather';

  static List<Location> get locations => [
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

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case currentWeatherPage:
        return MaterialPageRoute(
            builder: (context) => CurrentWeatherPage(locations, context));
      default:
        throw CircularProgressIndicator();
    }
  }
}
