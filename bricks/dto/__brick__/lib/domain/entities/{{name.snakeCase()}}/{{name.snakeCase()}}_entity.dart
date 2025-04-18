import 'package:equatable/equatable.dart';

class {{name.pascalCase()}}Entity extends Equatable {
  final String id;

  const {{name.pascalCase()}}Entity({
    required this.id,
  });

  @override
  List<Object?> get props => [id];

  @override
  String toString() {
    return '{{name.pascalCase()}}Entity{id: $id,}';
  }
}
