import 'package:equatable/equatable.dart';

import '../../../../model/GameByCategory.dart';

enum GamesByCategoryStatus { initial, success, error, loading }

extension GamesByCategoryStatusX on GamesByCategoryStatus {
  bool get isInitial => this == GamesByCategoryStatus.initial;

  bool get isSuccess => this == GamesByCategoryStatus.success;

  bool get isError => this == GamesByCategoryStatus.error;

  bool get isLoading => this == GamesByCategoryStatus.loading;
}

class GetGameByCategoryState extends Equatable {
  @override
  List<Object?> get props => [games, status, categoryName];

  final List<ResultsGR> games;
  final GamesByCategoryStatus status;
  final String categoryName;

  const GetGameByCategoryState(
      {this.status = GamesByCategoryStatus.initial,
      List<ResultsGR>? games,
      String? categoryName})
      : games = games ?? const [],
        categoryName = categoryName ?? '';

  GetGameByCategoryState copyWith({
    List<ResultsGR>? games,
    GamesByCategoryStatus? status,
    String? categoryName,
  }) {
    return GetGameByCategoryState(
        status: status ?? this.status,
        categoryName: categoryName ?? this.categoryName,
        games: games ?? this.games);
  }
}
