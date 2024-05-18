import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/logan.jpeg"),
            ),
            Spacer(),
            Text(
              "Hyungjin Ahn (Logan)",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: 5),
            Text(
              "NLP/RL Researcher\n& Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.2,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
