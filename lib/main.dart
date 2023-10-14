import 'dart:async';
import 'dart:io';

Future<dynamic> main(final context) async {
  context.log(Platform.environment);

  return context.res.json({
    'environment': Platform.environment,
  });
}
