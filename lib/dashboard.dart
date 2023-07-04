import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';
import 'package:jg_lobby/lobby_route_manager.dart';

class Dashboard extends StatelessWidget {
  final EventProcessor eventProcessor;
  const Dashboard({Key? key, required this.eventProcessor}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: "Leaderboard")
        ]),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LobbyRouteManager(eventProcessor: eventProcessor)
            ],
          ),
        ),
      ),
    );
  }
}
