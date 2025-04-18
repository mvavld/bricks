import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/{{name.snakeCase()}}/{{name.snakeCase()}}_entity.dart';

part '{{name.snakeCase()}}_dto.g.dart';

@JsonSerializable()
class {{name.pascalCase()}}Dto {
  final String id;

  const {{name.pascalCase()}}Dto({
    required this.id,
  });

  {{name.pascalCase()}}Entity intoDomain() {
    return {{name.pascalCase()}}Entity(
      id: id,
    );
  }

  factory {{name.pascalCase()}}Dto.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}DtoFromJson(json);
}
