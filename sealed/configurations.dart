sealed class Configuration {}

class Debug extends Configuration {}

class Release extends Configuration {}

class Custom extends Configuration {
  final String setting;
  Custom(this.setting);
}