import 'package:flutter/material.dart';
import 'package:infogame/ui/widget/allgame/widget/all_game_widget.dart';
import 'package:infogame/ui/widget/category_by/games_by_category_widget.dart';
import 'package:infogame/ui/widget/category_widget/categories_widget.dart';

import 'container_body.dart';
import 'header_title.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HeaderTitle(),
          SizedBox(height: 40.0),
          ContainerBody(
            children: [
              CategoriesWidget(),
              GameByCategoryWidget(),
              AllGamesWidget(title: 'All Game')
            ],
          )
        ],
      ),
    );
  }
}
