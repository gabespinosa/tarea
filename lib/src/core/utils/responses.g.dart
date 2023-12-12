// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    UserResponseModel(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserResponseModelToJson(UserResponseModel instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

BlogResponseModel _$BlogResponseModelFromJson(Map<String, dynamic> json) =>
    BlogResponseModel(
      blogs: (json['blogs'] as List<dynamic>)
          .map((e) => BlogModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BlogResponseModelToJson(BlogResponseModel instance) =>
    <String, dynamic>{
      'blogs': instance.blogs,
    };
