import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pinned chats'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;
  void _onDestinationTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (_selectedindex) {
      case 0:
        page = const Randompage();
        break;
      case 1:
        page = const Randompage();
        break;
      case 2:
        page = const Randompage();
        break;
      case 3:
        page = const Randompage();
        break;
      default:
        page = const Randompage();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: page,
      ),
      bottomNavigationBar: Navbar(
        currentIndex: _selectedindex,
        onTap: _onDestinationTapped,
      ),
    );
  }
}

class Randompage extends StatefulWidget {
  const Randompage({super.key});

  @override
  State<Randompage> createState() => _RandompageState();
}

class _RandompageState extends State<Randompage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

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
