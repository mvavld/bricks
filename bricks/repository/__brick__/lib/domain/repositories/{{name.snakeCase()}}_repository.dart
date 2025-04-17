import 'package:dartz/dartz.dart';
import '../../common/exceptions/app_exception.dart';

abstract class {{name.pascalCase()}}Repository {
  Future<Either<bool?, AppError?>> {{method.camelCase()}}();
}
