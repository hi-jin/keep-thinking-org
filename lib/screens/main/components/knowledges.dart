import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(
          title: "Application Development",
          text: "Flutter, Dart, Firebase",
        ),
        KnowledgeText(
          title: "AI (NLP, RL)",
          text: "PyTorch, Lightning, Gym, SB3",
        ),
        KnowledgeText(
          title: "Robotics",
          text: "ROS, Gazebo",
        ),
        KnowledgeText(
          title: "Communication",
          text: "Git, GitHub",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: primaryColor.withOpacity(0.8))),
          Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              SizedBox(width: defaultPadding / 2),
              Expanded(child: Text(text)),
            ],
          ),
        ],
      ),
    );
  }
}
