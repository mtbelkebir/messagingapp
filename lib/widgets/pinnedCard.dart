import 'package:flutter/material.dart';

class PinnedCard extends StatefulWidget {
  const PinnedCard({super.key});

  @override
  State<PinnedCard> createState() => PpinnedCardState();
}

class PpinnedCardState extends State<PinnedCard> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
        child: Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
          splashColor: theme.primaryColorLight,
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
              height: 100,
              width: 200,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/person.jpg'),
                    ),
                    Text('A card that can be tapped'),
                  ],
                ),
              ))),
    ));
  }
}
