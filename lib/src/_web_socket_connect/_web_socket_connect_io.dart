import 'dart:io';

/// Create a WebSocket connection.
Future<WebSocket> connect(
    String url, {
      Iterable<String>? protocols,
      Map<String, dynamic>? headers,
      Duration? pingInterval,
      String? binaryType,
    }) async {
  return await WebSocket.connect(url, protocols: protocols, headers: headers)
    ..pingInterval = pingInterval;
}
