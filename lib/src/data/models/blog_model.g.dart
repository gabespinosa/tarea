// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) => BlogModel(
      user_id: json['user_id'] as int,
      title: json['title'] as String,
      content_text: json['content_text'] as String,
      photo_url: json['photo_url'] as String,
      description: json['description'] as String,
      id: json['id'] as int,
      category: json['category'] as String,
    );

Map<String, dynamic> _$BlogModelToJson(BlogModel instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'title': instance.title,
      'content_text': instance.content_text,
      'photo_url': instance.photo_url,
      'description': instance.description,
      'id': instance.id,
      'category': instance.category,
    };
