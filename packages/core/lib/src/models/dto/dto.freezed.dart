// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return _ResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ResponseDto {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<NewsModel> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDtoCopyWith<ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoCopyWith<$Res> {
  factory $ResponseDtoCopyWith(
          ResponseDto value, $Res Function(ResponseDto) then) =
      _$ResponseDtoCopyWithImpl<$Res, ResponseDto>;
  @useResult
  $Res call({String status, int totalResults, List<NewsModel> articles});
}

/// @nodoc
class _$ResponseDtoCopyWithImpl<$Res, $Val extends ResponseDto>
    implements $ResponseDtoCopyWith<$Res> {
  _$ResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseDtoCopyWith<$Res>
    implements $ResponseDtoCopyWith<$Res> {
  factory _$$_ResponseDtoCopyWith(
          _$_ResponseDto value, $Res Function(_$_ResponseDto) then) =
      __$$_ResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<NewsModel> articles});
}

/// @nodoc
class __$$_ResponseDtoCopyWithImpl<$Res>
    extends _$ResponseDtoCopyWithImpl<$Res, _$_ResponseDto>
    implements _$$_ResponseDtoCopyWith<$Res> {
  __$$_ResponseDtoCopyWithImpl(
      _$_ResponseDto _value, $Res Function(_$_ResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$_ResponseDto(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseDto implements _ResponseDto {
  const _$_ResponseDto(
      {required this.status,
      required this.totalResults,
      required final List<NewsModel> articles})
      : _articles = articles;

  factory _$_ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDtoFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<NewsModel> _articles;
  @override
  List<NewsModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDtoCopyWith<_$_ResponseDto> get copyWith =>
      __$$_ResponseDtoCopyWithImpl<_$_ResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDtoToJson(
      this,
    );
  }
}

abstract class _ResponseDto implements ResponseDto {
  const factory _ResponseDto(
      {required final String status,
      required final int totalResults,
      required final List<NewsModel> articles}) = _$_ResponseDto;

  factory _ResponseDto.fromJson(Map<String, dynamic> json) =
      _$_ResponseDto.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<NewsModel> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDtoCopyWith<_$_ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
