import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infogame/model/Genres.dart';
import 'package:infogame/ui/widget/category_widget/category_bloc.dart';
import 'package:infogame/ui/widget/category_widget/category_state.dart';

import '../category_by/bloc/category_game_by_bloc.dart';
import '../category_by/bloc/category_game_by_event.dart';
import 'category_event.dart';
import 'category_item.dart';

class CategoriesSuccessWidget extends StatelessWidget {
  const CategoriesSuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc,CategoryState>(builder: (context, state) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CategoryItem(
                key: ValueKey('${state.genres[index].name}$index'),
                category: state.genres[index],
                callback: (Results categorySelected) {
                  log('id:${categorySelected.id}');
                  context.read<CategoryBloc>().add(
                    GetCategorySelect(
                      select: categorySelected.id??0,
                    ),
                  );
                  context.read<CategoryGameByBloc>().add(
                    GetGameByCategory(
                      select: categorySelected.id??99,
                      categoryName: categorySelected.name ?? '',
                    ),
                  );
                },
              );
            },
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => SizedBox(
              width: 16.0,
            ),
            itemCount: state.genres.length),
      );
    });
  }
}
