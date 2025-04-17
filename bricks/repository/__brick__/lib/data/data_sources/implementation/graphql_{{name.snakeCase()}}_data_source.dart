import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../network/responses/rm_server_response.dart';

import '../{{name.snakeCase()}}_data_source.dart';

@Singleton(as: {{name.pascalCase()}}DataSource)
class Graphql{{name.pascalCase()}}DataSource extends {{name.pascalCase()}}DataSource {
  final GraphQLClient client;

  Graphql{{name.pascalCase()}}DataSource({
    required this.client,
  });

  @override
  Future<RmServerResponse> {{method.camelCase()}}() async {
    final response = await client.mutate${{method.camelCase()}}();
    return response.rmServerResponse;
  }

}
