import 'package:core/core.dart';

abstract  class NewsDataSource {
  NewsDataSource();

  Future<ResponseDto> getEverything({
    required String q,
    required String apiKey,
    required int pageSize,
    required int page,
  });
}
