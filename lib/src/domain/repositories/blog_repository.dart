import 'package:study/src/domain/entities/blog_entity.dart';

abstract class BlogRepository {
  Future<List<BlogEntity>?> getAllBlogs();
  Future<BlogEntity> getBlog(int id);
}
