import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/app/domain/entities/article.dart';

abstract class ArticleRepository {
  // API methods
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
