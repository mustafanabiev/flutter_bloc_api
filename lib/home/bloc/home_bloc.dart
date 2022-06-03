import 'package:bloc/bloc.dart';
import 'package:bloc_api/locator.dart';
import 'package:bloc_api/services/boredService.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BoredService _boredService;

  HomeBloc(this._boredService) : super(HomeLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      final activity = await _boredService.getBoredActivity();
      emit(HomeLoadedState(activity));
    });
  }
}
