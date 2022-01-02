abstract class IConfig {
  String get baseUrl;
}

class Config implements IConfig {
  @override
  String get baseUrl => "https://teamboke.herokuapp.com";
}
