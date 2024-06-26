import 'package:flutter/material.dart';
import 'package:flutter_profile/models/publication.dart';
import 'package:flutter_profile/screens/components/work_list_view.dart';
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
    return WorkListView<Publication>(
      works: publications,
      workToCard: (work, isSummary) {
        return PublicationCard(
          publication: work,
          isSummary: isSummary,
        );
      },
      showOnly: showOnly,
    );
  }
}
