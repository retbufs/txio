import 'dart:collection';
import 'dart:mirrors';

import 'package:txio/mvc/handler.dart';
import 'package:txio/mvc/http_method.dart';
import 'package:txio/mvc/route.dart';

//路由解析
class RouteMatcher {
  //URL
  static const Map<String, Route> _routes = <String, Route>{};
  static const Map<String, List<Route>> _hooks = <String, List<Route>>{};
  Map<String, List<MethodMirror>> _classMethodPool = HashMap();
  Map<ClassMirror, Object> _controllerPool = HashMap();

  Route addRoute(Route route) {
    HttpMethod httpMethod = route.httpMethod;
    String path = route.path;
    ClassMirror controller = route.targetType;
    this.addRouteAll(httpMethod,path,controller: controller);
  }
  // ignore: missing_return
  Route addRouteAll(HttpMethod httpMethod, String path,{Object controller,
    ClassMirror controllerType, MethodMirror method}) {

  }
}
