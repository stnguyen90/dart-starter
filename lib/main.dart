import 'dart:async';
import 'dart:io';

Future<dynamic> main(final context) async {
  context.log(Platform.environment);
  context.log(context.headers);
  context.log(context.bodyRaw);
  return context.res.json({
    'environment': Platform.environment,
    'headers': context.headers,
    'bodyRaw': context.bodyRaw
  });
}
