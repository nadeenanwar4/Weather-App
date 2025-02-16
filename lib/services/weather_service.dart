import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:new_weather_app/models/weather_model.dart';

class WeatherService {
  final dio = Dio();
  final String baseUrl =
      "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline";
  final String apiKey = dotenv.env['API_KEY']!;

  //final String apiKey = "SJBNB5Z85TGJCKSAHRELV8UYS";

  Future<WeatherModel> getWeatherData({required String cityName}) async {
    try {
      Response response = await dio.get(
          "$baseUrl/$cityName/?unitGroup=metric&key=$apiKey&lang=ar&include=current&elements=tempmax,tempmin,temp,conditions,description,icon,datetime");
      Map<String, dynamic> jsonData = response.data;
      return WeatherModel.fromJson(jsonData);
    } on DioException catch (e) {
      final String errorMsg = e.response?.data ?? "oops, There was a dio error";
      throw Exception(errorMsg);
    } catch (e) {
      log(e.toString());
      throw Exception("oops, there was an error, try later");
    }
  }
}
