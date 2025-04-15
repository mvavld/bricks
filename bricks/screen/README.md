## Структура файлов

lib
 └──views
     ├── router
     │   └── event.dart
     └── screens
         └── example
             ├── bloc
             │   ├── example.dart
             │   ├── example_bloc.dart
             │   ├── example_event.dart
             │   └── example_state.dart
             ├── widgets
             └── example_screen.dart


## Консоль

[1] Активируйте mason_cli с помощью команды
- dart pub global activate mason_cli

[2] Выполните команду
- mason make screen --on-conflict append

[3] Введите название экрана в консоль
