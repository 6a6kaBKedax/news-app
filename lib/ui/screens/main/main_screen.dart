import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:news_app/ui/screens/main/models/news_cubit.dart';
import 'package:news_app/ui/screens/news_detail/news_detail_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController controller = TextEditingController();

  final PagingController<int, NewsModel> newsController = PagingController(firstPageKey: 0);


  @override
  void initState() {
    controller.text = 'Ukraine';
    controller.addListener(() {
      newsController.refresh();
      context.read<NewsCubit>().search(controller.value.text, 0, newsController);
    });
    newsController.addPageRequestListener((pageKey) {
      context.read<NewsCubit>().search(controller.value.text, pageKey, newsController);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSearchTextField(
              controller: controller,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state.state == NewsStateEnum.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state.state == NewsStateEnum.error) {
              return Center(
                child: Text(
                  'Ooops, try another request',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              );
            } else {
              return PagedListView<int, NewsModel>(
                shrinkWrap: true,
                pagingController: newsController,
                builderDelegate: PagedChildBuilderDelegate<NewsModel>(
                  itemBuilder: (context, item, index) => NewsItemWidget(
                    model: item,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NewsDetailScreen(model: item)),
                      );
                    },
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
