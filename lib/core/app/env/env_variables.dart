import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariables {
  EnvVariables._();
  static final EnvVariables instance = EnvVariables._();
  String _envType = '';
  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: ".env.dev");
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: ".env.prod");
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  String get envType => _envType;
  bool get debugMode => _envType == 'dev';
  bool get prodMode => _envType == 'prod';
}
