// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:study/src/domain/entities/blog_entity.dart';

@RoutePage()
class BlogDetailPage extends StatelessWidget {
  const BlogDetailPage({
    Key? key,
    required this.blogEntity,
  }) : super(key: key);

  final BlogEntity blogEntity;

  @override
  Widget build(BuildContext context) {
    return _ContentPage(
      blogEntity: blogEntity,
    );
  }
}

class _ContentPage extends StatelessWidget {
  final BlogEntity blogEntity;

  const _ContentPage({super.key, required this.blogEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          blogEntity.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            blogEntity.content_text,
            style: const TextStyle(
              fontSize: 17,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
