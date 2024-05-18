import 'package:flutter_profile/core/app_routes.dart';
import 'package:flutter_profile/screens/home/home_screen.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import 'package:flutter_profile/screens/projects/project_screen.dart';
import 'package:flutter_profile/screens/publication/publication_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          GoRoute(
            path: '/',
            name: Routes.home,
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: '/publications',
            name: Routes.publications,
            builder: (context, state) => PublicationsScreen(),
          ),
          GoRoute(
            path: '/projects',
            name: Routes.projects,
            builder: (context, state) => ProjectsScreen(),
          ),
        ],
      ),
    ],
  ),
);
