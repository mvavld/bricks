import '../network/responses/rm_server_response.dart';

abstract class {{name.pascalCase()}}DataSource {
Future<RmServerResponse> {{method.camelCase()}}();
}
