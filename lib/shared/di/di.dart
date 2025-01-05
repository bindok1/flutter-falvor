import 'package:base_2/shared/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';



final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDepedencies() async {
  getIt.init();
  getIt.allowReassignment = true;
}