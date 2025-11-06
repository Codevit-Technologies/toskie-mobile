import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Flavor { dev, prod }

class AppConfig {
  static late Flavor flavor;

  static String get flavorName {
    switch (flavor) {
      case Flavor.dev:
        return 'dev';
      case Flavor.prod:
        return 'prod';
    }
  }

  static String get baseUrl => dotenv.env['TOSKIE_BASE_URL'] ?? '';
  static String get signature => dotenv.env['TOSKIE_SIGNATURE'] ?? '';
  static String get bhargavJwt => dotenv.env['TOSKIE_BHARGAV_JWT'] ?? '';
  static String get shreeJwt => dotenv.env['TOSKIE_SHREE_JWT'] ?? '';
}
