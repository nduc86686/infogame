import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/game_repository.dart';
import 'category_game_by_event.dart';
import 'category_game_by_state.dart';

class CategoryGameByBloc
    extends Bloc<CategoryGameByEvent, GetGameByCategoryState> {
  CategoryGameByBloc({required this.gameRepository})
      : super(const GetGameByCategoryState()) {
    on<GetGameByCategory>(_mapGetGamesByCategoryEventToState);
  }

  GameRepository gameRepository;

  void _mapGetGamesByCategoryEventToState(
      GetGameByCategory event, Emitter<GetGameByCategoryState> emit) async {
    try {
      emit(state.copyWith(status: GamesByCategoryStatus.loading));
      var gamesByCategory =
          await gameRepository.getGameByCategory(event.select.toString());
      log('ooooo $gamesByCategory');
      emit(state.copyWith(
          status: GamesByCategoryStatus.success,
          games: gamesByCategory?.results,
          categoryName: event.categoryName));
    } catch (e) {
      emit(state.copyWith(status: GamesByCategoryStatus.error));
      log('error1:$e');
    }
  }
}
