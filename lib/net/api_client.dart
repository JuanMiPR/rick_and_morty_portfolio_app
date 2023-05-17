import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty_portfolio_app/model/character_response.dart';

import '../model/character.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://rickandmortyapi.com/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/character")
  Future<CharacterResponse> getAllCharacters(
    @CancelRequest() CancelToken cancelToken,
    @Query("page") int page,
  );

  @GET("/character/{id}")
  Future<Character> getCharacter(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") String id,
  );

  @GET("/episode")
  Future<CharacterResponse> getAllEpisodes(
    @CancelRequest() CancelToken cancelToken,
    @Query("page") int page,
  );

  @GET("/episode/{id}")
  Future<Character> getEpisode(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") String id,
  );

  @GET("/location")
  Future<CharacterResponse> getAllLocations(
    @CancelRequest() CancelToken cancelToken,
    @Query("page") int page,
  );

  @GET("/location/{id}")
  Future<Character> getLocation(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") String id,
  );
}
