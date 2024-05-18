import 'package:flutter/material.dart';
import 'package:flutter_profile/models/publication.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constants.dart';

class PublicationCard extends StatelessWidget {
  const PublicationCard({
    Key? key,
    required this.publication,
    required this.isSummary,
  }) : super(key: key);

  final Publication publication;
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
            publication.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Row(
            children: [
              Text(
                publication.authors,
                maxLines: (isSummary) ? 1 : null,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
              const SizedBox(width: defaultPadding / 2),
              Expanded(child: Text("${publication.journal} (${publication.year})", overflow: TextOverflow.ellipsis)),
            ],
          ),
          const SizedBox(height: defaultPadding / 2),
          Text(
            publication.abs,
            maxLines: (isSummary) ? (Responsive.isMobileLarge(context) ? 3 : 4) : null,
            overflow: (isSummary) ? TextOverflow.ellipsis : null,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding / 2),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: isSummary ? 250 : double.infinity),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Image.asset(publication.imageUrl ?? "assets/images/publications/empty.png"),
            ),
          ),
          if (publication.url != null) ...[
            TextButton(
              onPressed: () {
                launchUrlString(publication.url!);
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
