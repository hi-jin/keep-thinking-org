import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/models/project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
    required this.isSummary,
  }) : super(key: key);

  final Project project;
  final bool isSummary;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          if (project.progress != null) ...[
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Progress"),
                      Text(
                        project.progress == null ? "Completed" : "${(project.progress! * 100).toInt()}% Completed",
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(height: defaultPadding / 4),
                  LinearProgressIndicator(
                    value: min(1.0, max(0.0, project.progress!)),
                    color: primaryColor,
                    backgroundColor: darkColor,
                    minHeight: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
          ],
          Text(
            project.description,
            maxLines: (isSummary) ? (Responsive.isMobileLarge(context) ? 3 : 4) : null,
            overflow: (isSummary) ? TextOverflow.ellipsis : null,
            style: TextStyle(height: 1.5),
          ),
          if (!isSummary && project.detailedDescription != null) ...[
            const SizedBox(height: defaultPadding / 2),
            Text(project.detailedDescription!),
          ],
          const SizedBox(height: defaultPadding / 2),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: isSummary ? 250 : double.infinity),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Image.asset(project.imageUrl ?? "assets/images/projects/empty.png"),
            ),
          ),
          if (project.url != null) ...[
            TextButton(
              onPressed: () {
                launchUrlString(project.url!);
              },
              child: Text(
                "Read More >>",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
