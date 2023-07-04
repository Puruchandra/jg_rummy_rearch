// import 'package:event_manager/event_manager.dart';
// import 'package:flutter/material.dart';

// import 'lobby_1.dart';
// import 'lobby_2.dart';

// class LobbyRouteManager {
//   static Widget onGenerateRoute(RouteSettings setting) {
//     switch (setting.name) {
//       case '/lobby1':
//         return Lobby1(eventProcessor: setting.arguments as EventProcessor);
//       case '/lobby2':
//         return Lobby2(eventProcessor: setting.arguments as EventProcessor);
//       default: return const Placeholder();
//     }
//   }
// }

// import 'package:event_manager/event_manager.dart';
// import 'package:flutter/material.dart';

// class LobbyRouteManager extends StatelessWidget {
//   final Event event;
//   const LobbyRouteManager({ Key? key, required this.event }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';

import 'lobby_1.dart';
import 'lobby_2.dart';

class LobbyRouteManager extends StatefulWidget {
  final EventProcessor eventProcessor;
  const LobbyRouteManager({Key? key, required this.eventProcessor});

  @override
  State<LobbyRouteManager> createState() => _LobbyRouteManagerState();
}

class _LobbyRouteManagerState extends State<LobbyRouteManager> implements EventProcessor {
  final ValueNotifier<Event> _event = ValueNotifier<Event>(Event.none);
  final Widget goodJob = const Text('Good job!');
  @override
  Widget build(BuildContext context) {
    Lobby1 lobby1 = Lobby1(eventProcessor: this);
    return SizedBox(
      // height: 400,
      child: Scaffold(
        backgroundColor: Colors.amber.shade200,
        body: SizedBox(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ValueListenableBuilder<Event>(
                  builder: (BuildContext context, Event event, Widget? child) {
                    switch (event) {
                      case Event.navigateToLobby2:
                        return Lobby2(eventProcessor: this);
                      case Event.lobby2Completed:
                        Navigator.pop(context);
                        return lobby1;
                      default:
                        return lobby1;
                    }
                  },
                  valueListenable: _event,
                  
                  child: goodJob,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onEventReceived(Event event, {data}) {
    _event.value = event;
  }
}