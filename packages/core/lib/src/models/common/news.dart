part of 'common.dart';


@freezed
class NewsModel with _$NewsModel{
  const factory NewsModel({
     required SourceModel source,
     String? author,
     String? title,
     String? description,
     String? url,
     String? urlToImage,
     String? publishedAt,
     String? content,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, Object?> json) => _$NewsModelFromJson(json);
}
