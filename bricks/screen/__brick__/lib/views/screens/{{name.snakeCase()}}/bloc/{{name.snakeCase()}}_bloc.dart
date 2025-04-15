import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../router/bloc.dart';


import '{{name.snakeCase()}}.dart';

@Injectable()
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {

  final BaseRouter router;

  {{name.pascalCase()}}Bloc(
  @factoryParam this.router,
  ) : super({{name.pascalCase()}}State.initial()) {
    on<{{name.pascalCase()}}Event>(
      (event, emit) async {
        switch(event){
          case InitEvent():
            await _onInit(event, emit);
          case RefreshEvent():
            await _onRefreshEvent(event, emit);
        }
      }
    );
  }

  Future<void> _onInit(InitEvent event, Emitter emitter) async {

  }

  Future<void> _onRefreshEvent(RefreshEvent event, Emitter emitter) async {

  }
}