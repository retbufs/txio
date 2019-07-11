import 'dart:collection';
import 'dart:mirrors';

import 'package:txio/mvc/http_method.dart';

/**
 *路由信息
 */
class Route {
  HttpMethod _httpMethod;
  String _path;
  Object _target;
  //反射对象
  ClassMirror _targetType;
  MethodMirror _action;
  int _sort;

  Route(){
//    this._sort =int.parse("21E15");
  }
  ///保存参数
  Map<String, String> _pathParams = HashMap();

  Route.all(
      this._httpMethod,
      this._path,
      this._target,
      this._targetType,
      this._action);
  Route.of(
      this._httpMethod,
      this._path,
      this._target,
      this._targetType,
      this._action);

  HttpMethod get httpMethod => _httpMethod;

  set httpMethod(HttpMethod value) {
    _httpMethod = value;
  }

  Map<String, String> get pathParams => _pathParams;

  set pathParams(Map<String, String> value) {
    _pathParams = value;
  }

  int get sort => _sort;

  set sort(int value) {
    _sort = value;
  }

  MethodMirror get action => _action;

  set action(MethodMirror value) {
    _action = value;
  }

  ClassMirror get targetType => _targetType;

  set targetType(ClassMirror value) {
    _targetType = value;
  }

  Object get target => _target;

  set target(Object value) {
    _target = value;
  }

  String get path => _path;

  set path(String value) {
    _path = value;
  }

  String getAllPath() => "${this._path}#${this._httpMethod}";

  @override
  String toString() {
    return 'Route{_httpMethod: $_httpMethod, _path: $_path, _target: $_target, _targetType: $_targetType, _action: $_action, _sort: $_sort, _pathParams: $_pathParams}';
  }
}
