import "package:hive_flutter/hive_flutter.dart";

class HiveDB {
  static Future<void> init() async {
    await Hive.initFlutter();

    await Hive.openBox("settings");
  }
}
