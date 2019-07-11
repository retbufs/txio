import 'dart:collection';
import 'dart:mirrors';

import 'Route.dart';

//路由解析
class RouteMatcher {
  //URL
  static const Map<String, Route> routes = <String, Route>{};
  static const Map<String, List<Route>> hooks = <String, List<Route>>{};
  Map<String, List<MethodMirror>> _classMethodPool = HashMap();
  Map<ClassMirror, Object> _controllerPool = HashMap();

  Route addRoute() {

    return null;
  }
}
