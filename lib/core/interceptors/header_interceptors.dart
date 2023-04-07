import 'dart:io';

import 'package:dio/dio.dart';

class HeaderInterceptors extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler){
    options.headers.addAll({
      HttpHeaders.userAgentHeader:'PostmanRuntime/7.29.0'
    });
    return handler.next(options);
  }
}