import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/dependencies.dart';
import 'package:study/src/core/routes/routes.gr.dart';
import 'package:study/src/domain/entities/blog_entity.dart';
import 'package:study/src/presentation/bloc/blogs/blogs_cubit.dart';
import 'package:study/src/presentation/bloc/blogs/blogs_state.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BlogsCubit>()..getBlogs(),
      child: _ContentPage(),
    );
  }
}

class _ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blogs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(
                icon: const Icon(Icons.person_2_rounded),
                color: Colors.white,
                onPressed: () {
                  context.router.push(
                    const PerfilRoute(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body:  BlocBuilder<BlogsCubit, BlogsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.green,
            ));
          } else if (state.error != null) {
            return Text(state.error!);
          } else if (state.listBlogs!.isEmpty) {
            return const Text('No hay Blogs');
          } else {
            return BodyBlogs(
              blogsList: state.listBlogs!,
            );
          }
        },
      ),
    );
  }
}

class BodyBlogs extends StatelessWidget {
  const BodyBlogs({
    super.key,
    required this.blogsList,
  });

  final List<BlogEntity> blogsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: blogsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlogCard(
              blog: blogsList[index],
            ),
          );
        },
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    required this.blog,
  });

  final BlogEntity blog;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          blog.photo_url,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black45,
          width: double.infinity,
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                blog.title,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  context.router.push(
                   BlogDetailRoute(blogEntity: blog),
                  );
                },
              )
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                softWrap:true,
                blog.description,
                style: const TextStyle(
                  shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                    fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(

                blog.category,
                style: const TextStyle(
                  shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                    fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
              ),

            ],
          ),
        )
      ],
    );
  }
}
