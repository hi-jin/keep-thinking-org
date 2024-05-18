import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkListView<T> extends ConsumerWidget {
  const WorkListView({
    Key? key,
    required this.works,
    required this.workToCard,
    this.showOnly,
  }) : super(key: key);

  final List<T> works;
  final Widget Function(T work, bool isSummary) workToCard;
  final int? showOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        min(works.length, showOnly ?? works.length),
        (index) => Padding(
          padding: const EdgeInsets.only(top: defaultPadding),
          child: workToCard(works[index], showOnly != null),
        ),
      ),
    );
  }
}
