import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:new_weather_app/views/home_view.dart';
import 'package:new_weather_app/views/search_view.dart';

void main() async {
  await dotenv.load(); // Load the .env file
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      routes: {
        "/SearchView": (context) => SearchView(),
      },
    );
  }
}
