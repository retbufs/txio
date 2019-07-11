



import 'dart:io';

/**
 *
 */
class RouteContext {
  HttpRequest request;
  HttpResponse response;
  HttpHeaders headers;
  List<Cookie> cookies;

  RouteContext({this.request, this.response, this.headers}) {
    this.cookies = this.request.cookies;
    this.headers = this.request.headers;
  }
  
}
