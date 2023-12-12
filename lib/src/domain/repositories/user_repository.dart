import 'package:study/src/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getAllUser();
  Future<UserEntity> getUser(int id);
}
