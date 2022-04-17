import 'dart:developer';
import 'package:infogame/common/rest_client.dart';
import 'package:infogame/model/Games.dart';
import 'package:infogame/model/Genres.dart';
import '../model/GameByCategory.dart';
import 'network_utils.dart';

class GameRepository {
  GameRepository();

  var client = RestClient(
      NetworkUtils.getDioClientConfiguration('https://api.rawg.io/api/'));

  Future<List<Results>?> getGenres() async {
    List<Results>? result;
    var response = await client.getGenres().catchError((e) {
      log('error:$e');
    });
    log('response ${response.count}');
    result = response.results;
    return result;
  }

  Future<GameByCategory?> getGameByCategory(String category) async {
    GameByCategory? result;
    var response = await client.getGamesBy(category).catchError((e) {
      log('error11:$e');
    });
    log('response11 ${response}');
    result = response;
    return result;
  }

  Future<Games?> getAllGame() async {
    Games? games;
    try{
      var response = await client.getGames();
      log('response11 ${response}');
      games=response;
    }
    catch(e){
      log('errrorrr $e');
    }
    return games;
  }
}
