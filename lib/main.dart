import 'dart:async';
import 'dart:io';

Future<dynamic> main(final context) async {
  return context.res.json({
    'environment': Platform.environment,
  });
}
