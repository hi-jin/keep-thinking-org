import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/core/app_router.dart';
import 'package:flutter_profile/core/app_routes.dart';
import 'package:flutter_profile/models/publication.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/publication/publication_list_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPublications extends ConsumerWidget {
  const MyPublications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final publications = ref.watch(publicationsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Flexible(
              child: Text(
                "Recent Publications (${min(2, publications.length)} of ${publications.length})",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(routerProvider).pushNamed(Routes.publications);
              },
              child: Text("View all"),
            ),
          ],
        ),
        Responsive(
          mobile: PublicationListView(showOnly: 2),
          mobileLarge: PublicationListView(showOnly: 2),
          tablet: PublicationListView(showOnly: 2),
          desktop: PublicationListView(showOnly: 2),
        )
      ],
    );
  }
}
