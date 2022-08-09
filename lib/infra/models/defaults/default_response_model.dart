import 'dart:convert';

import 'default_error_model.dart';

class DefaultResponse {
  final int statusCode;
  final bool success;
  final dynamic data;
  final DefaultErrorModel? error;
  final dynamic metadata;

  DefaultResponse({
    required this.statusCode,
    required this.success,
    this.data,
    required this.error,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return {
      'statusCode': statusCode,
      'success': success,
      'data': data,
      'error': error?.toMap(),
    };
  }

  factory DefaultResponse.fromMap(Map<String, dynamic> map) {
    return DefaultResponse(
      statusCode: map['statusCode']?.toInt() ?? 0,
      success: map['success'] ?? false,
      data: map['data'],
      error:
          map['error'] != null ? DefaultErrorModel.fromMap(map['error']) : null,
      metadata: map['metadata'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DefaultResponse.fromJson(String source) =>
      DefaultResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DefaultResponseModel(statusCode: $statusCode, success: $success, error: $error)';
  }
}

