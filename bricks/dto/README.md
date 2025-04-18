## Структура файлов

lib
├── data
│   └── dto
│      └── example_dto.dart
│
└── domain
    └── entities
        └── example_entity.dart


## Консоль

[1] Активируйте mason_cli с помощью команды
- dart pub global activate mason_cli

[2] Выполните команду
- mason make dto --on-conflict append

[3] Введите название класса в консоль