import 'package:bloc_api/src/services/boredService.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

void setUp() {
  sl.registerLazySingleton<BoredService>(() => BoredService());
}
