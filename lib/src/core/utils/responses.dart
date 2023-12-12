// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:study/src/data/models/blog_model.dart';
import 'package:study/src/data/models/user_model.dart';

part 'responses.g.dart';

@JsonSerializable()
class UserResponseModel extends Equatable {
  final List<UserModel> users;

  const UserResponseModel({required this.users});

  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  @override
  List<Object> get props => [users];
}


@JsonSerializable()
class BlogResponseModel extends Equatable {
  final List<BlogModel> blogs;

  const BlogResponseModel({required this.blogs});

  Map<String, dynamic> toJson() => _$BlogResponseModelToJson(this);

  factory BlogResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BlogResponseModelFromJson(json);

  @override
  List<Object> get props => [blogs];
}
