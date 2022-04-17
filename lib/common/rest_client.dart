import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../model/GameByCategory.dart';
import '../model/Games.dart';
import '../model/Genres.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/games")
  Future<Games> getGames();

  @GET("/genres")
  Future<Genres> getGenres();

  @GET("/games")
  Future<GameByCategory> getGamesBy(
    @Query('genres') String genres,
  );
}
