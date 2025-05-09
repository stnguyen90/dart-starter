import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<dynamic> main(final context) async {

  final res = {
    'scheme': context.req.scheme,
    'method': context.req.method,
    'url': context.req.url,
    'host': context.req.host,
    'port': context.req.port,
    'path': context.req.path,
    'headers': context.req.headers,
    'environment': Platform.environment,
    'body': context.req.bodyRaw
  };

  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  context.log(encoder.convert(res));
  return context.res.json(res);
}
