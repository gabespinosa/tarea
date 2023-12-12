import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:study/src/data/datasources/remote_datasources.dart';
import 'package:study/src/data/repositories/blog_repository_impl.dart';
import 'package:study/src/data/repositories/user_repository_impl.dart';
import 'package:study/src/domain/repositories/blog_repository.dart';
import 'package:study/src/domain/repositories/user_repository.dart';
import 'package:study/src/presentation/bloc/blogs/blogs_cubit.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt
    ..registerLazySingleton<Dio>(
      () {
        final dio = Dio();
        return dio;
      },
    )
    ..registerSingleton<RemoteDataSources>(
      RemoteDataSources(
        Dio(),
      ),
    )

    // Repositories
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(),
    )
    ..registerLazySingleton<BlogRepository>(
      () => BlogRepositoryImpl(getIt()),
    )

    // Blocs
    ..registerFactory<BlogsCubit>(
      () => BlogsCubit(getIt()),
    );
}
