import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/game_repository.dart';
import 'all_game_event.dart';
import 'all_game_state.dart';


class AllGamesBloc extends Bloc<AllGamesEvent, AllGamesState> {
  AllGamesBloc({
     required this.gameRepository,
  }) : super( AllGamesState()) {
    on<GetGames>(mapGetGamesEventToState);
  }

   GameRepository gameRepository=GameRepository();

  void mapGetGamesEventToState(
      GetGames event, Emitter<AllGamesState> emit) async {
    try {
      emit(state.copyWith(status: AllGamesStatus.loading));
      final games = await gameRepository.getAllGame();
      if(games!=null){
        emit(
          state.copyWith(
            status: AllGamesStatus.success,
            games: games,
          ),
        );
      }
    } catch (error) {
      emit(state.copyWith(status: AllGamesStatus.error));
    }
  }
}
