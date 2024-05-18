import 'package:flutter/material.dart';
import 'package:flutter_profile/models/project.dart';
import 'package:flutter_profile/screens/components/work_list_view.dart';
import 'package:flutter_profile/screens/projects/project_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectsListView extends ConsumerWidget {
  const ProjectsListView({
    Key? key,
    this.showOnly,
  }) : super(key: key);

  final int? showOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(projectsProvider);
    return WorkListView<Project>(
      works: projects,
      workToCard: (work, isSummary) {
        return ProjectCard(
          project: work,
          isSummary: isSummary,
        );
      },
      showOnly: showOnly,
    );
  }
}
