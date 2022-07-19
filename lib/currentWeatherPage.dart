import 'package:flutter/material.dart';
import 'package:weather_app_217012200/models/Weather.dart';
import 'package:http/http.dart';

class CurrentWeatherPage extends StatefulWidget {
  const CurrentWeatherPage({super.key, required this.title});
  final title;
  @override
  State<CurrentWeatherPage> createState() => _CurrentWeatherPageState();
}

class _CurrentWeatherPageState extends State<CurrentWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Open Weather api',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

Widget weatherBox(Weather _weather) {
  return Column(
    children: [
      Text("${_weather.temp}"),
      Text("${_weather.description}"),
      Text("feels:${_weather.feelsLike}"),
      Text("H:${_weather.high} L:${_weather.low}"),
    ],
  );
}

Future CurrentWeather() sync*{
  Weather weather;

  String City = "Cape Town";
  String Apikey = "657ae8e6b0f5ce64f68ed84dc9ecfc21";
  var url = "https://api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04&exclude=hourly,daily&appid=$Apikey";

  
  final response = await http.get(url);

  // checking connection and fetching data

  if (response.statusCode == 200) {

    weather = Weather.fromJson(JsonDecode(response.body));
    
  }
}
