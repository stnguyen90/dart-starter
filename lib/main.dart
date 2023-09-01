import 'dart:async';
import 'dart:io';

Future<dynamic> main(final context) async {
  return context.res.json({
    'req': context.req,
    'environment': Platform.environment,
  });
}
