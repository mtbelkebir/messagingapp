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
              width: 300,
              child: Text('A card that can be tapped'),
            )),
      ),
    );
  }
}
