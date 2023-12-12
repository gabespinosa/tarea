// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/src/domain/repositories/blog_repository.dart';
import 'package:study/src/presentation/bloc/blogs/blogs_state.dart';

class BlogsCubit extends Cubit<BlogsState> {
  BlogsCubit(
    this._blogRepository,
  ) : super(const BlogsState(isLoading: true));

  final BlogRepository _blogRepository;

  Future<void> getBlogs() async {
    //Emitir un loading
    emit(state.copyWith(isLoading: true));

    //Hacer llamada al metodo en el repositorio
    final blogs = await _blogRepository.getAllBlogs();

    //verificar que tipo de respuesta trae el metodo que acabo de llamar

    //verifico si esta vacio
    if (blogs!.isEmpty) {
      emit(state.copyWith(
        isLoading: false,
        listBlogs: [],
      ));
    }
    //verifico si no esta vacio
    else if (blogs.isNotEmpty) {
      emit(state.copyWith(
        isLoading: false,
        listBlogs: blogs,
      ));
    }
    //si ocurrio un error
     else {
      emit(state.copyWith(
        isLoading: false,
        error: 'Ocurrió un error',
      ));
    }
  }

  Future<void> loadInitialData() async {
    final stableState = state;
    try {
      emit(state.copyWith(isLoading: true));

      emit(state.copyWith(isLoading: false));
    } catch (error) {
      emit(state.copyWith(error: error.toString()));
      emit(stableState.copyWith(isLoading: false));
    }
  }
}
