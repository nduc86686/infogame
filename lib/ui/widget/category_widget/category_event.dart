import 'package:equatable/equatable.dart';

class CategoryEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetCategory extends CategoryEvent {}

class GetCategorySelect extends CategoryEvent {
  final int select;

  GetCategorySelect({required this.select});

  @override
  // TODO: implement props
  List<Object?> get props => [select];
}
