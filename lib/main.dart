import 'dart:async';
import 'dart:io';

Future<dynamic> main(final context) async {
  context.log(Platform.environment);
  context.log(context.req.headers);
  context.log(context.req.bodyRaw);
  return context.res.json({
    'env': Platform.environment,
    'headers': context.req.headers,
    'bodyRaw': context.req.bodyRaw
  });
}
