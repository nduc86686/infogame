import 'package:equatable/equatable.dart';

import '../../../../model/Games.dart';

enum AllGamesStatus { initial, success, error, loading }

extension AllGamesStatusX on AllGamesStatus {
  bool get isInitial => this == AllGamesStatus.initial;

  bool get isSuccess => this == AllGamesStatus.success;

  bool get isError => this == AllGamesStatus.error;

  bool get isLoading => this == AllGamesStatus.loading;
}

class AllGamesState extends Equatable {
  AllGamesState({
    this.status = AllGamesStatus.initial,
    Games? games,
  }) : games = games ?? games?.empty;

  Games? games;
  final AllGamesStatus status;

  @override
  List<Object?> get props => [status, games];

  AllGamesState copyWith({
    Games? games,
    AllGamesStatus? status,
  }) {
    return AllGamesState(
      games: games ?? this.games,
      status: status ?? this.status,
    );
  }
}
