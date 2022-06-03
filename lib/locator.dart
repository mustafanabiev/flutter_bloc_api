import 'package:bloc_api/services/boredService.dart';
import 'package:get_it/get_it.dart';

import 'home/bloc/home_bloc.dart';

final s1 = GetIt.instance;

void setup() {
  s1.registerLazySingleton<BoredService>(() => BoredService());
}
