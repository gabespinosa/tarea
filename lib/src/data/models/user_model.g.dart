// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      street: json['street'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      id: json['id'] as int,
      gender: json['gender'] as String,
      date_of_birth: json['date_of_birth'] as String,
      job: json['job'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      profile_picture: json['profile_picture'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'phone': instance.phone,
      'street': instance.street,
      'state': instance.state,
      'country': instance.country,
      'id': instance.id,
      'gender': instance.gender,
      'date_of_birth': instance.date_of_birth,
      'job': instance.job,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'profile_picture': instance.profile_picture,
    };
