import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'news_state.dart';

part 'news_cubit.freezed.dart';

class NewsCubitDto {
  final BuildContext context;
  late NewsRepository repository;

  NewsCubitDto(this.context) {
    repository = context.read<NewsRepository>();
  }
}

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.dto) : super(const NewsState.initial());

  final NewsCubitDto dto;

  static const int _pageSize = 25;

  Future search(String query, int page, PagingController<int, NewsModel> controller) async {
    try {
      //emit(state.copyWith(state: NewsStateEnum.loading));
      final response = await dto.repository.getEverything(
        q: query,
        apiKey: 'a8294614d963404abb1d90f12e859131',
        page: page + 1,
        pageSize: _pageSize,
      );
      if (response.status == 'ok') {
        final isLastPage = response.articles.length < _pageSize;
        if (isLastPage) {
          controller.appendLastPage(response.articles);
        } else {
          final nextPageKey = page + response.articles.length;
          controller.appendPage(response.articles, nextPageKey);
        }
        emit(
          state.copyWith(
            news: response.articles,
            state: NewsStateEnum.init,
          ),
        );
      } else {
        throw Exception('Response not OK');
      }
    } catch (e) {
      emit(state.copyWith(state: NewsStateEnum.error));
    }
  }
}
