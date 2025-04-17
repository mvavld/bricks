## Структура файлов

lib
├── data
│   ├── data_sources
│   │   ├── implementation
│   │   │   └── graphql_example_data_source.dart
│   │   │
│   │   └── example_data_source.dart
│   │
│   └── repositories
│       │
│       └── example_implementation.dart
│
└── domain
    └── repositories
        │
        └── example_repository.dart


## Консоль

[1] Активируйте mason_cli с помощью команды
- dart pub global activate mason_cli

[2] Выполните команду
- mason make repository --on-conflict append

[3] Введите название репозитория в консоль

[4] Введите название метода в консоль
