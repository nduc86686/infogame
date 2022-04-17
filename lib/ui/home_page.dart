import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infogame/ui/home_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infogame/ui/widget/allgame/bloc/all_game_bloc.dart';
import 'package:infogame/ui/widget/allgame/bloc/all_game_event.dart';
import 'package:infogame/ui/widget/category_by/bloc/category_game_by_bloc.dart';
import 'package:infogame/ui/widget/category_widget/category_bloc.dart';
import 'package:infogame/ui/widget/category_widget/category_event.dart';

import '../common/game_repository.dart';
import '../common/rest_client.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<CategoryBloc>(
              create: (context) => CategoryBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetCategory()),
            ),
            BlocProvider<CategoryGameByBloc>(
              create: (context) => CategoryGameByBloc(
                gameRepository: context.read<GameRepository>(),
              ),
            ),
            BlocProvider<AllGamesBloc>(
              create: (context) => AllGamesBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetGames()),
            ),
          ],
          child: const HomeLayout(),
        ),
      ),
    );
  }
}
