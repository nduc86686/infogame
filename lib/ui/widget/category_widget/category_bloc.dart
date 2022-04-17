import 'package:infogame/ui/widget/category_widget/category_event.dart';
import 'package:infogame/ui/widget/category_widget/category_state.dart';
import 'package:bloc/bloc.dart';
import 'package:retrofit/http.dart';

import '../../../common/game_repository.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required this.gameRepository,
  }) : super(CategoryState()) {
    on<GetCategory>(_mapGetCategoriesEventToState);
    on<GetCategorySelect>(_mapSelectCategoryEventToState);
  }

  final GameRepository gameRepository;

  void _mapGetCategoriesEventToState(
      GetCategory event, Emitter<CategoryState> emiplt) async {
    emit(state.copyWith(status: CategoryStatus.loading));
    try {
      final genres = await gameRepository.getGenres();
      emit(
        state.copyWith(
          status: CategoryStatus.success,
          genres: genres,
        ),
      );
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }

  void _mapSelectCategoryEventToState(
      GetCategorySelect event, Emitter<CategoryState> emit) async {
    emit(
      state.copyWith(
        status: CategoryStatus.selected,
        select: event.select,
      ),
    );
  }
}
