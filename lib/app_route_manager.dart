import 'package:event_manager/event_manager.dart';
import 'package:flutter/material.dart';
import 'package:jg_register/jg_register.dart';
import 'package:jg_rummy_rearch/dashboard.dart';
import 'package:jg_splash/jg_splash.dart';


class AppRouteManager implements EventProcessor {
  @override
  void onEventReceived(Event event, {dynamic data}) {
    switch (event) {
      case Event.registrationComplete:
      Navigator.pushReplacement(data as BuildContext, MaterialPageRoute(builder: (context) => Dashboard(eventProcessor: this)));
        break;
      case Event.splashComplete:
        Navigator.pushReplacement(data as BuildContext, MaterialPageRoute(builder: (context) => JgRegistration(eventProcessor: this)));
        break;
      case Event.initApp:
        runApp(MaterialApp(home: JgSplash(eventProcessor: this)));
        break;
      default:
    }
  }
}