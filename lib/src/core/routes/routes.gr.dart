// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:study/src/domain/entities/blog_entity.dart' as _i6;
import 'package:study/src/presentation/pages/detail_blog.dart' as _i1;
import 'package:study/src/presentation/pages/home_page.dart' as _i2;
import 'package:study/src/presentation/pages/prefil_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    BlogDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BlogDetailRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BlogDetailPage(
          key: args.key,
          blogEntity: args.blogEntity,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    PerfilRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PerfilPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BlogDetailPage]
class BlogDetailRoute extends _i4.PageRouteInfo<BlogDetailRouteArgs> {
  BlogDetailRoute({
    _i5.Key? key,
    required _i6.BlogEntity blogEntity,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          BlogDetailRoute.name,
          args: BlogDetailRouteArgs(
            key: key,
            blogEntity: blogEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'BlogDetailRoute';

  static const _i4.PageInfo<BlogDetailRouteArgs> page =
      _i4.PageInfo<BlogDetailRouteArgs>(name);
}

class BlogDetailRouteArgs {
  const BlogDetailRouteArgs({
    this.key,
    required this.blogEntity,
  });

  final _i5.Key? key;

  final _i6.BlogEntity blogEntity;

  @override
  String toString() {
    return 'BlogDetailRouteArgs{key: $key, blogEntity: $blogEntity}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PerfilPage]
class PerfilRoute extends _i4.PageRouteInfo<void> {
  const PerfilRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PerfilRoute.name,
          initialChildren: children,
        );

  static const String name = 'PerfilRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
