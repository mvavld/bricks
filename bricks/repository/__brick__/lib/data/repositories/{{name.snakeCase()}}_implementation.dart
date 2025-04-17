import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../network/responses/utils.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../data_sources/{{name.snakeCase()}}_data_source.dart';

import '../../common/exceptions/app_exception.dart';


@Singleton(as: {{name.pascalCase()}}Repository)
class {{name.pascalCase()}}RepositoryImplementation implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}DataSource _{{name.camelCase()}}DataSource;

  {{name.pascalCase()}}RepositoryImplementation(
    this._{{name.camelCase()}}DataSource,
  );

  @override
  Future<Either<bool?, AppError?>> {{method.camelCase()}}() async {
    //TODO: Реализовать метод
    return EitherUtils.makeEitherDataResult(null, null);
  }
}