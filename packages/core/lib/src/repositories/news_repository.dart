import 'package:core/core.dart';
import 'package:core/src/datasources/interfaces/news.dart';

class NewsRepository {
  final NewsDataSource dataSource;

  NewsRepository(this.dataSource);

  Future<ResponseDto> getEverything({
    required String q,
    required String apiKey,
    required int page,
    required int pageSize,
  }) =>
      dataSource.getEverything(
        q: q,
        apiKey: apiKey,
        page: page,
        pageSize: pageSize,
      );
}
