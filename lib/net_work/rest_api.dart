import 'package:dio/dio.dart';
import 'package:flutter_core/models/post.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/posts')
  Future<List<Post>> getPosts();
}
