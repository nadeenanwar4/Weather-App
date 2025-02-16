class WeatherModel {
  final String cityName;
  final String updatedTime;
  final String? icon;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.updatedTime,
      required this.icon,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json["address"],
      updatedTime: json["currentConditions"]["datetime"],
      icon: json["currentConditions"]["icon"],
      temp: json["currentConditions"]["temp"],
      maxTemp: json["days"][0]["tempmax"],
      minTemp: json["days"][0]["tempmin"],
      // weatherCondition: json["days"][0]["description"],
      weatherCondition: json["currentConditions"]["conditions"],
    );
  }
}
