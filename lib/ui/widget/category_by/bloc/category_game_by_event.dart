import 'package:equatable/equatable.dart';

class CategoryGameByEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetGameByCategory extends CategoryGameByEvent {
  final int select;
  final String categoryName;

  GetGameByCategory({required this.select, required this.categoryName});

  @override
  // TODO: implement props
  List<Object?> get props => [select, categoryName];
}
