import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<dynamic> main(final context) async {
  final res = {
    'headers': context.req.headers,
    'environment': Platform.environment,
  };
  
  context.log(jsonEncode(res));
  return context.res.json(res);
}
