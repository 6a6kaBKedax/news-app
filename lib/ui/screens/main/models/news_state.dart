part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial({
    @Default(NewsStateEnum.init) NewsStateEnum state,
    @Default([]) List<NewsModel> news,
  }) = _Initial;
}

enum NewsStateEnum {
  init,
  loading,
  error,
}
