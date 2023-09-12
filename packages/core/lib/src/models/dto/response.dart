part of 'dto.dart';

@freezed
class ResponseDto with _$ResponseDto {
  const factory ResponseDto({
    required String status,
    required int totalResults,
    required List<NewsModel> articles,
  }) = _ResponseDto;

  factory ResponseDto.fromJson(Map<String, Object?> json) => _$ResponseDtoFromJson(json);
}
