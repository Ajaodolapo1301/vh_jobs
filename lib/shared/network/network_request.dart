import 'package:dio/dio.dart';

import 'interceptors.dart';

class HttpService {
  Dio? _dio;
  final String baseUrl;
  final bool hasAutorization;
  final bool isFormType;

  HttpService(
      {required this.baseUrl,
      this.hasAutorization = false,
      this.isFormType = false}) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      receiveTimeout: 25000,
    ));
    _interceptorsInit();
  }
  static const int timeoutDuration = 1;

  Future<Response> getRequest(
    urlEndPoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    response = await _dio!
        .get(urlEndPoint, queryParameters: queryParameters)
        .timeout(Duration(minutes: timeoutDuration));
    return response;
  }

  Future<Response> post(
    urlEndpoint, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    response = await _dio!
        .post(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(Duration(minutes: timeoutDuration));
    print("$urlEndpoint + $data");
    return response;
  }

  Future<Response> put(urlEndpoint,
      {data, Map<String, dynamic>? queryParameters}) async {
    Response response;

    response = await _dio!
        .put(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(Duration(minutes: timeoutDuration));

    return response;
  }

  Future<Response> delete(urlEndpoint,
      {data, Map<String, dynamic>? queryParameters}) async {
    Response response;

    response = await _dio!
        .delete(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(Duration(minutes: timeoutDuration));

    return response;
  }

  Future<Response> patch(urlEndpoint,
      {data, Map<String, dynamic>? queryParameters}) async {
    Response response;

    response = await _dio!
        .patch(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(Duration(minutes: timeoutDuration));

    return response;
  }

  _interceptorsInit() {
    _dio!.interceptors.add(HeaderInterceptor(
        hasToken: hasAutorization,
        dio: _dio!,
        contentType: isFormType
            ? HeaderContentType.formType
            : HeaderContentType.jsonType));
  }
}

extension ResponseExt on Response {
  bool get isSuccessful => this.statusCode! >= 200 && this.statusCode! < 300;
  get body => data;
}

const String errorDefaultMessage = "An error occured, please try again!";
// Error Handler Function
String networkErrorHandler(DioError error,
    {Function(DioError e)? onResponseError}) {
  switch (error.type) {
    case DioErrorType.response:
      if (onResponseError == null && error.response != null) {
        if (error.response?.statusCode == 500) {
          return errorDefaultMessage;
        }
        return error.response?.data["message"];
      }
      return onResponseError!(error);
    case DioErrorType.connectTimeout:
      return "Connection Timeout";
    case DioErrorType.sendTimeout:
      return "Request timeout";
    case DioErrorType.receiveTimeout:
      return "Receive timeout";
    case DioErrorType.cancel:
      return "Request cancelled";
    case DioErrorType.other:
      return "No Internet Connection";
    default:
      return errorDefaultMessage;
  }
}
