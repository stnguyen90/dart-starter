import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<dynamic> main(final context) async {
  final res = {
    'headers': context.req.headers,
    'environment': Platform.environment,
    'body': context.req.bodyRaw
  };

  context.log(jsonEncode(res));
  return context.res.json(res);
}
