import 'package:txio/mvc/http/http_method.dart';

class Post {
  final String value;
  final HttpMethod method;

  Post(this.value, {this.method = HttpMethod.POST});
}
