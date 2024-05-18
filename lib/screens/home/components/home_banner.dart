import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Hello! I'm Hyungjin Ahn,\na "),
                      TextSpan(
                        text: "Developer",
                        style: TextStyle(color: primaryColor),
                      ),
                      TextSpan(text: " & "),
                      TextSpan(
                        text: "NLP/RL Researcher",
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context)) const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2, vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) ThinkingCodedText(),
          if (!Responsive.isMobileLarge(context)) SizedBox(width: defaultPadding / 2),
          Text("I love "),
          Responsive.isMobile(context) ? Expanded(child: AnimatedText()) : AnimatedText(),
          if (!Responsive.isMobileLarge(context)) SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) ThinkingCodedText(closed: true),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "building something cool & funny.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "learning & thinking about anything.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class ThinkingCodedText extends StatelessWidget {
  final bool closed;

  const ThinkingCodedText({
    Key? key,
    this.closed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "thinking",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: closed ? "/>" : ">"),
        ],
      ),
    );
  }
}
