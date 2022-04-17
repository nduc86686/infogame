import 'package:equatable/equatable.dart';

import '../../../model/Genres.dart';

enum CategoryStatus { initial, success, error, loading, selected }

extension CategoryStatusX on CategoryStatus {
  bool get isInitial => this == CategoryStatus.initial;

  bool get isSuccess => this == CategoryStatus.success;

  bool get isError => this == CategoryStatus.error;

  bool get isLoading => this == CategoryStatus.loading;

  bool get isSelected => this == CategoryStatus.selected;
}

class CategoryState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [select, status, genres];

  final CategoryStatus status;
  final List<Results> genres;
  final int select;

  CategoryState({
    this.status = CategoryStatus.initial,
    List<Results>? genres,
    int select = 0,
  })  : genres = genres ?? [],
        select = select;

  CategoryState copyWith(
      {List<Results>? genres, CategoryStatus? status, int? select}) {
    return CategoryState(
        status: status ?? this.status,
        genres: genres ?? this.genres,
        select: select ?? this.select);
  }
}
