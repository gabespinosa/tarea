import 'package:study/src/domain/entities/blog_entity.dart';

class BlogsState {
	final bool isLoading;
	final String? error;
  final List<BlogEntity>? listBlogs ;

	const BlogsState({
    this.listBlogs,
		this.isLoading = false,
		this.error,
	});

	BlogsState copyWith({
		bool? isLoading,
		String? error,
    List<BlogEntity>? listBlogs,
	}) {
		return BlogsState(
			isLoading: isLoading ?? this.isLoading,
			listBlogs: listBlogs ?? this.listBlogs,
			error: error ?? this.error,
		);
	}
}
