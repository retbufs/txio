import 'package:txio/mvc/http/request.dart';
import 'package:txio/mvc/http/response.dart';
import 'package:txio/txio.dart';

import 'package:txio/mvc/Route.dart';

class WebContext {
  /**
   * default "/"
   */
  static String _contextPath = "/";
  static String _seesionKey;
  Request _request;

  Response _response;
  static Route _route;
  static Tio _tio;

  WebContext(this._request, this._response);

  static void init(Tio tio, String contextPath) {
    WebContext._tio = tio;
    WebContext._contextPath = contextPath;
  }

  Request get request => _request;

  set request(Request value) {
    _request = value;
  }

  Response get response => _response;

  set response(Response value) {
    _response = value;
  }

  static Route get route => _route;

  static set route(Route value) {
    _route = value;
  }
}
