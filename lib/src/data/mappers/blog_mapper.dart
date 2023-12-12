import 'package:study/src/data/models/blog_model.dart';
import 'package:study/src/domain/entities/blog_entity.dart';

class BlogMapper {

 static BlogEntity modelToEntity(BlogModel blogModel) {
    return BlogEntity(
        user_id: blogModel.user_id,
        title: blogModel.title,
        content_text: blogModel.content_text,
        photo_url: blogModel.photo_url,
        description: blogModel.description,
        id: blogModel.id,
        category: blogModel.category);
  }

 static BlogModel entityToModel(BlogEntity blogEntity) {
    return BlogModel(
        user_id: blogEntity.user_id,
        title: blogEntity.title,
        content_text: blogEntity.content_text,
        photo_url: blogEntity.photo_url,
        description: blogEntity.description,
        id: blogEntity.id,
        category: blogEntity.category);
  }
}
