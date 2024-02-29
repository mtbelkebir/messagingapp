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
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
          splashColor: theme.primaryColorLight,
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
              height: 140,
              width: 250,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/person.jpg'),
                        ),
                        SizedBox(width: 30, height: 0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nom',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'prenom',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'A card that can be tapped',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ))),
    );
  }
}
