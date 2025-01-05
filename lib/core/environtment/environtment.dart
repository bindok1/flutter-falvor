
import 'package:base_2/core/constant/core_constant.dart';
import 'package:injectable/injectable.dart';


enum EnvironmentType { dev, prod, unknownType }

@lazySingleton
class Environment {
  late EnvironmentType current;

  Environment(){
    const String? appFlavor = String.fromEnvironment('FLAVOR') != '' ?
    String.fromEnvironment('FLAVOR') : null;

    switch(appFlavor) {
      case CoreConstant.dev:
        current = EnvironmentType.dev;
        break;
      case CoreConstant.prod:
        current = EnvironmentType.prod;
        break;
      default:
        current = EnvironmentType.unknownType;
        break;
    }
  }

  String get getBaseUrl => current == EnvironmentType.prod? CoreConstant.prodBaseUrl: current == EnvironmentType.dev? CoreConstant.devBaseUrl: "";

  String get getAppName => current == EnvironmentType.prod? CoreConstant.prodAppName: current == EnvironmentType.dev? CoreConstant.devAppName: "";

  bool get isDev => current == EnvironmentType.dev;

  bool get isProd => current == EnvironmentType.prod;
  
  bool get isUnknownFlavor => current == EnvironmentType.prod || current == EnvironmentType.dev;
}