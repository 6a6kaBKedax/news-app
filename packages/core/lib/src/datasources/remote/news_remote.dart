part of 'remote.dart';

@RestApi(baseUrl: "https://newsapi.org/v2")
abstract class _NewsRemote extends NewsDataSource {
  factory _NewsRemote(Dio dio, {String baseUrl}) = __NewsRemote;

  @override
  @GET("/everything")
  Future<ResponseDto> getEverything({
    @Query('q') required String q,
    @Query('apiKey') required String apiKey,
    @Query('pageSize') required int pageSize,
    @Query('page') required int page,
  });
}

class NewsRemoteRetrofitImplementation extends NewsDataSource {
  static final _NewsRemote _client = _NewsRemote(Dio());

  @override
  Future<ResponseDto> getEverything({
    required String q,
    required String apiKey,
    required int pageSize,
    required int page,

  }) =>
      _client.getEverything(q: q, apiKey: apiKey, pageSize: pageSize, page: page);
}
