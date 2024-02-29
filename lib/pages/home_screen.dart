import 'package:flutter/material.dart';
import 'package:messagingapp/widgets/pinnedCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Text(
          "Hello world",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        PinnedCard(),
      ]),
    );
  }
}
