sealed class {{name.pascalCase()}}Event {
  const {{name.pascalCase()}}Event();

  @override
  bool operator ==(Object other) => identical(this, other) || other is {{name.pascalCase()}}Event && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

class InitEvent extends {{name.pascalCase()}}Event {
  const InitEvent();
}

class RefreshEvent extends {{name.pascalCase()}}Event {
  const RefreshEvent();
}