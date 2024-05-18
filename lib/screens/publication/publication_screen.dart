import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/publication/publication_list_view.dart';

class PublicationScreen extends StatelessWidget {
  const PublicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding),
            Text(
              "Publications",
              style: Theme.of(context).textTheme.headline6,
            ),
            PublicationListView(),
          ],
        ),
      ),
    );
  }
}
