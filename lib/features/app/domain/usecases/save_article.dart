import 'package:news_app/core/usecase/usecase.dart';
import 'package:news_app/features/app/domain/entities/article.dart';
import 'package:news_app/features/app/domain/repository/article_repository.dart';

class SaveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? param}) {
    return _articleRepository.saveArticle(param!);
  }
}
