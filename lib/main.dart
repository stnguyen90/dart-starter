import 'dart:async';
import 'dart:io';

Future<dynamic> main(final context) async {
  return context.res.json({
    'headers': context.req.headers,
    'environment': Platform.environment,
  });
}
