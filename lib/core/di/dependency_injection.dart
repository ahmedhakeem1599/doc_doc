import 'package:get_it/get_it.dart';
import '../network/remote/api_service.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {

  /// ApiService
  getIt.registerLazySingleton<ApiService>(() => ApiService());
}