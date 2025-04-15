import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/{{name.pascalCase()}}.dart';


class {{name.pascalCase()}}Screen extends StatelessWidget {

  static const String id = "{{name.snakeCase()}}";

  const {{name.pascalCase()}}Screen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
    builder: (context, state) {
        return Scaffold(
          body: SafeArea(
          child: const SizedBox(),
        ),);
      }
    );
  }
}