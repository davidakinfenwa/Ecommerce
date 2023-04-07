import 'package:dio/dio.dart';

import '../util/constants.dart';


final _options = BaseOptions(
  
  baseUrl: 'http://192.168.98.52/letseat/index/',
  connectTimeout: ClientRequestTimeout.kConnectionTimeout,
  receiveTimeout: ClientRequestTimeout.kRecieveTimeout,
);

final dioClient = Dio(_options);
