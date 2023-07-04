import 'package:event_manager/event_manager.dart';
import 'package:jg_rummy_rearch/app_route_manager.dart';

void main() {
  final AppRouteManager appRouteManager = AppRouteManager();
  appRouteManager.onEventReceived(Event.initApp);
}