import 'dart:convert';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'area_info_text.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Republic of Korea",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Daejeon",
                    ),
                    Knowledges(),
                    SizedBox(height: defaultPadding),
                    Divider(),
                    Text("Contact"),
                    Container(
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launchUrlString("https://www.linkedin.com/in/hyungjin-ahn-085745190");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrlString("https://github.com/hi-jin");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        // Load the PDF file from assets
                        final pdfBytes = await rootBundle.load('assets/pdfs/resume_hyungjinahn.pdf');
                        final pdfBase64 = base64Encode(pdfBytes.buffer.asUint8List());

                        // Create a Blob and trigger the download
                        final blob = html.Blob([base64Decode(pdfBase64)]);
                        final url = html.Url.createObjectUrlFromBlob(blob);
                        final anchor = html.AnchorElement(href: url)
                          ..setAttribute("download", "resume_hyungjinahn.pdf")
                          ..click();
                        html.Url.revokeObjectUrl(url);
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText1!.color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
