import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onTap;
  const Navbar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_rounded), label: 'Recents'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Appels'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Profil')
      ],
      selectedItemColor: Theme.of(context).colorScheme.primary,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      unselectedIconTheme: theme.iconTheme,
    );
  }
}
