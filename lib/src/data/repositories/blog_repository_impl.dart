import 'dart:developer';

import 'package:study/src/data/datasources/remote_datasources.dart';
import 'package:study/src/data/mappers/blog_mapper.dart';
import 'package:study/src/domain/entities/blog_entity.dart';
import 'package:study/src/domain/repositories/blog_repository.dart';

class BlogRepositoryImpl extends BlogRepository {
  BlogRepositoryImpl(this._remoteDataSources);

// Importar la clase para poder llamar a la API
  final RemoteDataSources _remoteDataSources;

  @override
  Future<List<BlogEntity>?> getAllBlogs() async {
    try {
      //Llamar metodo en la API
      final response = await _remoteDataSources.getAllBlogs();

      log(response.toString());

      //Mapear de Modelos a Entidades
      final List<BlogEntity> blogs =
          response.blogs.map((e) => BlogMapper.modelToEntity(e)).toList();
      return blogs;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<BlogEntity> getBlog(int id) {
    // TODO: implement getBlog
    throw UnimplementedError();
  }
}
