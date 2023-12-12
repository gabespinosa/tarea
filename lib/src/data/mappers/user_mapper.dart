import 'package:study/src/data/models/user_model.dart';
import 'package:study/src/domain/entities/user_entity.dart';

class UserMapper {
  UserEntity modelToEntity(UserModel userModel) {
    return UserEntity(
        first_name: userModel.first_name,
        last_name: userModel.last_name,
        email: userModel.email,
        phone: userModel.phone,
        street: userModel.street,
        state: userModel.state,
        country: userModel.country,
        id: userModel.id,
        gender: userModel.gender,
        date_of_birth: userModel.date_of_birth,
        job: userModel.job,
        city: userModel.city,
        zipcode: userModel.zipcode,
        profile_picture: userModel.profile_picture);
  }

  UserModel entityToModel(UserEntity userEntity) {
    return UserModel(
        first_name: userEntity.first_name,
        last_name: userEntity.last_name,
        email: userEntity.email,
        phone: userEntity.phone,
        street: userEntity.street,
        state: userEntity.state,
        country: userEntity.country,
        id: userEntity.id,
        gender: userEntity.gender,
        date_of_birth: userEntity.date_of_birth,
        job: userEntity.job,
        city: userEntity.city,
        zipcode: userEntity.zipcode,
        profile_picture: userEntity.profile_picture);
  }
}
