import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infogame/ui/widget/category_widget/category_bloc.dart';
import 'package:infogame/ui/widget/category_widget/category_event.dart';
import 'package:infogame/ui/widget/category_widget/category_state.dart';

import 'categories_success_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc,CategoryState>(
      buildWhen: (previous, current) => current.status.isSuccess,
      builder: (context,state){
        return  CategoriesSuccessWidget();
      },
    );
  }
}
