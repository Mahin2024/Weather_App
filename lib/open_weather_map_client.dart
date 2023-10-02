import 'dart:convert';

import 'package:location/location.dart';
import 'package:weather_forcaste/constraints.dart';
import 'package:http/http.dart'as http;
import 'weather_result.dart';
import 'forecast_result.dart';

class OpenWeatherMapClient{
  Future<weatherResult> getWeather(LocationData locationData)async{
    if(locationData.latitude!= null && locationData.longitude!=null){
      final res = await http.get(Uri.parse('$apiEndpoint/weather?lat=${locationData.latitude}&lon=${locationData.longitude}&units=mertic&appId=$apiKey'));
      if(res.statusCode==200){
        return weatherResult.fromJson(jsonDecode(res.body));
      }
      else {
        throw Exception('Bad Result');
      }
    }
    else
      {
        throw Exception('Wrong Location');
      }
  }

  Future<ForecastResult> getForecast(LocationData locationData)async{
    if(locationData.latitude!= null && locationData.longitude!=null){
      final res = await http.get(Uri.parse('$apiEndpoint/forecast?lat=${locationData.latitude}&lon=${locationData.longitude}&units=mertic&appId=$apiKey'));
      if(res.statusCode==200){
        return ForecastResult.fromJson(jsonDecode(res.body));
      }
      else {
        throw Exception('Bad Result');
      }
    }
    else
    {
      throw Exception('Wrong Location');
    }
  }
}

