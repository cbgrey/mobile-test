import 'package:aqueduct/aqueduct.dart';
import 'package:sftest/sftest.dart';
import 'package:random_string/random_string.dart';

class SeedController extends Controller {

  @override
  Future<RequestOrResponse> handle(Request request) async {
    var now = DateTime.now().toUtc().add(Duration(seconds:15)).toIso8601String();

    final _json ={
      'seed': randomString(32),
      'expiresAt': now};
    return Response.ok(_json);
  }
}
