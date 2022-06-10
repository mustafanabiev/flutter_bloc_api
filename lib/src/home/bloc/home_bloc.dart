import 'package:bloc/bloc.dart';
import 'package:bloc_api/locator.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../services/boredService.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // final _boredService = sl.get<BoredService>();
  final BoredService _boredService;

  HomeBloc(this._boredService) : super(const HomeLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      final activity = await _boredService.getBoredActivity();
      activity.fold(
          (l) => emit(HomeErrorState(l)), (r) => emit(HomeLoadedState(r)));
      // emit(HomeLoadedState(activity));
    });
  }
}
