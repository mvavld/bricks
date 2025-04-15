import 'package:equatable/equatable.dart';

import '../../../../domain/enums/base_status/base_status.dart';

class {{name.pascalCase()}}State extends Equatable {
  final BaseStatus flowStatus;

  const {{name.pascalCase()}}State({
    this.flowStatus = BaseStatus.initial,
  });

  factory {{name.pascalCase()}}State.initial() {
    return const {{name.pascalCase()}}State(
      flowStatus: BaseStatus.initial,
    );
  }


  @override
  List<Object?> get props => [
    flowStatus,
  ];

  {{name.pascalCase()}}State copyWith({
      BaseStatus? flowStatus,
    }) {
      return {{name.pascalCase()}}State(
        flowStatus: flowStatus ?? this.flowStatus,
      );
    }
}
