import 'dart:mirrors';

import 'mvc/handler.dart';
import 'mvc/route_matcher.dart';

class Tio {
   RouteMatcher routeMatcher = new RouteMatcher();
  static Tio of() {
    return new Tio();
  }

  //添加get请求方式
  Tio get(String path, RouteHandler handler) {
    //this.routeMatcher.addRoute();
  }
}
