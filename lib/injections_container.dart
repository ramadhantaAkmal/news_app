import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:news_app/features/app/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/app/data/repository/article_repository_impl.dart';
import 'package:news_app/features/app/domain/repository/article_repository.dart';
import 'package:news_app/features/app/domain/usecases/get_article.dart';
import 'package:news_app/features/app/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));

  // UseCases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  //Bloc
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
