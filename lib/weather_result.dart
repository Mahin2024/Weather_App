class weatherResult {
Coord? coord;
List<Weather>? weather;
String? base;
Main? main;
int? visibility;
Wind? wind;
Clouds? clouds;
int? dt;
Sys? sys;
int? timezone;
int? id;
String? name;
int? cod;
Snow? snow;

weatherResult({this.coord, this.weather, this.snow, this.base, this.main, this.visibility, this.wind, this.clouds, this.dt, this.sys, this.timezone, this.id, this.name, this.cod});

weatherResult.fromJson(Map<String, dynamic> json) {
coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
if (json['weather'] != null) {
weather = <Weather>[];
json['weather'].forEach((v) {
  weather!.add(Weather.fromJson(v));
});
}
base = json['base'];
main = json['main'] != null ? Main.fromJson(json['main']) : null;
snow = json['snow'] != null ? Snow.fromJson(json['snow']) : null;
visibility = json['visibility'];
wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
dt = json['dt'];
sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
timezone = json['timezone'];
id = json['id'];
name = json['name'];
cod = json['cod'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
if (coord != null) {
data['coord'] = coord!.toJson();
}
if (weather != null) {
data['weather'] = weather!.map((v) => v.toJson()).toList();
}
data['base'] = base;
if (main != null) {
data['main'] = main!.toJson();
}
data['visibility'] = visibility;
if (wind != null) {
data['wind'] = wind!.toJson();
}
if (clouds != null) {
data['clouds'] = clouds!.toJson();
}
if (snow != null) {
  data['snow'] = snow!.toJson();
}

data['dt'] = dt;
if (sys != null) {
data['sys'] = sys!.toJson();
}
data['timezone'] = timezone;
data['id'] = id;
data['name'] = name;
data['cod'] = cod;
return data;
}
}

class Coord {
double? lon;
double? lat;

Coord({this.lon, this.lat});

Coord.fromJson(Map<String, dynamic> json) {
lon = json['lon'];
lat = json['lat'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
data['lon'] = lon;
data['lat'] = lat;
return data;
}
}

class Weather {
int? id;
String? main;
String? description;
String? icon;

Weather({this.id, this.main, this.description, this.icon});

Weather.fromJson(Map<String, dynamic> json) {
id = json['id'];
main = json['main'];
description = json['description'];
icon = json['icon'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
data['id'] = id;
data['main'] = main;
data['description'] = description;
data['icon'] = icon;
return data;
}
}

class Main {
  double? t;
  double r=273;
double? temp;
double? feelsLike;
double? tempMin;
double? tempMax;
int? pressure;
int? humidity;
int? seaLevel;
int? grndLevel;


Main({this.t, this.feelsLike, this.tempMin, this.tempMax, this.pressure, this.humidity, this.seaLevel, this.grndLevel});

Main.fromJson(Map<String, dynamic> json) {
t = json['temp'];
t=(t!-r).ceilToDouble();
temp=(t) ;
feelsLike = json['feels_like'];
tempMin = double.parse(json['temp_min'].toString());
tempMax =double.parse(json['temp_max'].toString());
pressure = json['pressure'];
humidity = json['humidity'];
seaLevel = json['sea_level'];
grndLevel = json['grnd_level'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
data['temp'] = temp;
data['feels_like'] = feelsLike;
data['temp_min'] = tempMin;
data['temp_max'] = tempMax;
data['pressure'] = pressure;
data['humidity'] = humidity;
data['sea_level'] = seaLevel;
data['grnd_level'] = grndLevel;
return data;
}
}

class Wind {
double? speed;
int? deg;
double? gust;

Wind({this.speed, this.deg, this.gust});

Wind.fromJson(Map<String, dynamic> json) {
speed = json['speed'];
deg = json['deg'];
gust = json['gust'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
data['speed'] = speed;
data['deg'] = deg;
data['gust'] = gust;
return data;
}
}

class Clouds {
int? all;

Clouds({this.all});

Clouds.fromJson(Map<String, dynamic> json) {
all = json['all'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
data['all'] = all;
return data;
}
}

class Sys {
int? type;
int? id;
String? country;
int? sunrise;
int? sunset;

Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

Sys.fromJson(Map<String, dynamic> json) {
type = json['type'];
id = json['id'];
country = json['country'];
sunrise = json['sunrise'];
sunset = json['sunset'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = <String, dynamic>{};
data['type'] = type;
data['id'] = id;
data['country'] = country;
data['sunrise'] = sunrise;
data['sunset'] = sunset;
return data;
}
}

class Snow{
  double? d1h ;
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['d1h'] = d1h;
    return data;
  }
  Snow.fromJson(Map<String, dynamic> json) {
    d1h = json['d1h'];
  }

}