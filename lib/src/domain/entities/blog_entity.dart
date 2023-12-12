import 'package:equatable/equatable.dart';


class BlogEntity extends Equatable {
  const BlogEntity(
      {required this.user_id,
      required this.title,
      required this.content_text,
      required this.photo_url,
      required this.description,
      required this.id,
      required this.category});

  final int user_id;
  final String title;
  final String content_text;
  final String photo_url;
  final String description;
  final int id;
  final String category;



  @override
  List<Object> get props {
    return [
      user_id,
      title,
      content_text,
      photo_url,
      description,
      id,
      category,
    ];
  }
}
