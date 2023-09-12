import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/ui/screens/main/main_screen.dart';
import 'package:news_app/ui/screens/main/models/news_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(create: (context) => NewsRepository(NewsRemoteRetrofitImplementation())),
        BlocProvider(create: (context) => NewsCubit(NewsCubitDto(context))),
      ],
      child: MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
