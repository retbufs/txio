import 'http/request.dart';
import 'http/response.dart';

abstract class RouteHandler{
  void handle(Request request, Response response);
}
