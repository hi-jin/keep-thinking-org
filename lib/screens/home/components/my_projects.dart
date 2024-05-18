import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/core/app_router.dart';
import 'package:flutter_profile/core/app_routes.dart';
import 'package:flutter_profile/models/project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/projects/publication_list_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProjects extends ConsumerWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(projectsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Flexible(
              child: Text(
                "Recent Projects (${min(2, projects.length)} of ${projects.length})",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(routerProvider).pushNamed(Routes.projects);
              },
              child: Text("View all"),
            ),
          ],
        ),
        Responsive(
          mobile: ProjectsListView(showOnly: 2),
          mobileLarge: ProjectsListView(showOnly: 2),
          tablet: ProjectsListView(showOnly: 2),
          desktop: ProjectsListView(showOnly: 2),
        )
      ],
    );
  }
}
