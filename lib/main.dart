import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/app/presentation/pages/home/daily_news.dart';
import 'config/themes/app_themes.dart';
import 'features/app/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'features/app/presentation/bloc/article/remote/remote_article_event.dart';
import 'injections_container.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          home: const DailyNews()),
    );
  }
}
