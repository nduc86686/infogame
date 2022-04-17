import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bloc/category_game_by_bloc.dart';
import 'bloc/category_game_by_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'error_game_widget.dart';
import 'game_by_category_success_widget.dart';

class GameByCategoryWidget extends StatelessWidget {
  const GameByCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryGameByBloc, GetGameByCategoryState>(
        builder: (context, state) {
      return state.status.isSuccess
          ? state.games != null && state.games.length > 0
              ? GameByCategorySuccessWidget(
                  categoryName: state.categoryName,
                  games: state.games,
                )
              : Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue,
                )
          : state.status.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.status.isError
                  ? const ErrorGameWidget()
                  : const SizedBox();
    });
  }
}
