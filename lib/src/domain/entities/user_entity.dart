// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {

  const UserEntity(
      {required this.first_name,
      required this.last_name,
      required this.email,
      required this.phone,
      required this.street,
      required this.state,
      required this.country,
      required this.id,
      required this.gender,
      required this.date_of_birth,
      required this.job,
      required this.city,
      required this.zipcode,
      required this.profile_picture});

  final String first_name;
  final String last_name;
  final String email;
  final String phone;
  final String street;
  final String state;
  final String country;
  final int id;
  final String gender;
  final String date_of_birth;
  final String job;
  final String city;
  final String zipcode;
  final String profile_picture;

  @override
  List<Object> get props {
    return [
      first_name,
      last_name,
      email,
      phone,
      street,
      state,
      country,
      id,
      gender,
      date_of_birth,
      job,
      city,
      zipcode,
      profile_picture,
    ];
  }
}
