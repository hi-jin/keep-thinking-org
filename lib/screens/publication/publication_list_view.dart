import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/publication.dart';
import 'package:flutter_profile/screens/publication/publication_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PublicationListView extends ConsumerWidget {
  const PublicationListView({
    Key? key,
    this.showOnly,
  }) : super(key: key);

  final int? showOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final publications = ref.watch(publicationsProvider);
    return Column(
      children: List.generate(
        min(publications.length, showOnly ?? publications.length),
        (index) => Padding(
          padding: const EdgeInsets.only(top: defaultPadding),
          child: PublicationCard(
            publication: publications[index],
            isSummary: showOnly != null,
          ),
        ),
      ),
    );
  }
}
