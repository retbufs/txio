import 'http_method.dart';

///Get请求注解
class Get {
  final String value;
  final HttpMethod method;

  Get(this.value, {this.method = HttpMethod.GET});
}

///post 请求注解
class Post {
  final String value;
  final HttpMethod method;

  Post(this.value, {this.method = HttpMethod.POST});
}

//标记注解
class Json {}

///参数注解
class Param {
  final String value;
  final String method;

  Param(this.value, this.method);
}

///表单类型
class Multipart {
  final String value;

  Multipart(this.value);
}

class Body {
  String value; //内容名称
}

///路由注解
class Path {
  final String value;
  final String method;

  Path(this.value, this.method);
}

class Route {
  final String value;
  final HttpMethod method;

  Route(this.value, this.method);
}
