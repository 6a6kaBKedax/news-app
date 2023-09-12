part of 'common.dart';

@freezed
class SourceModel with _$SourceModel {
  const factory SourceModel({
    String? id,
    String? name,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, Object?> json) => _$SourceModelFromJson(json);
}
