

import 'dart:io';

import '../Route.dart';

abstract class Request{
  Request initPathParams(Route route);
  String host;
  String remoteAddress;

  /**
   * request uri
   */
  String uri;
  /**
   * request url
   */
  String url;

  String userAgent(){
    return HttpHeaders.userAgentHeader;
  }
  String protocol();
}