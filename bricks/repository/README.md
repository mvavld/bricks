# 📚 Шаблон Репозитория

## 📁 Структура Файлов

```
lib/
├── data/
│   ├── data_sources/
│   │   ├── implementation/
│   │   │   └── graphql_example_data_source.dart
│   │   │
│   │   └── example_data_source.dart
│   │
│   └── repositories/
│       │
│       └── example_implementation.dart
│
└── domain/
    └── repositories/
        │
        └── example_repository.dart
```

## 🚀 Начало Работы

### Требования
- [Dart SDK](https://dart.dev/get-dart)
- [Mason CLI](https://pub.dev/packages/mason_cli)

### Шаги Установки

1. **Активация Mason CLI**
   ```bash
   dart pub global activate mason_cli
   ```

2. **Создание Репозитория**
   ```bash
   mason make repository --on-conflict append
   ```

3. **Ввод Названия Репозитория**
   - Следуйте инструкциям в консоли для ввода названия репозитория

4. **Ввод Названия Метода**
   - Следуйте инструкциям в консоли для ввода названия метода

## 📝 Примечания
- Шаблон следует принципам чистой архитектуры с разделением на data и domain слои
- Каждый репозиторий имеет свою реализацию и интерфейс

## 💡 Примеры Использования

### Создание репозитория для работы с пользователями

1. **Создание репозитория**
   ```bash
   mason make repository --on-conflict append
   # Введите: User
   # Введите: getUser
   ```

2. **Структура созданных файлов**
   ```
   lib/
   ├── data/
   │   ├── data_sources/
   │   │   ├── implementation/
   │   │   │   └── graphql_user_data_source.dart
   │   │   │
   │   │   └── user_data_source.dart
   │   │
   │   └── repositories/
   │       │
   │       └── user_implementation.dart
   │
   └── domain/
       └── repositories/
           │
           └── user_repository.dart
   ```
   
### Лучшие Практики

1. **Организация кода**
   - Разделяйте интерфейсы и реализации
   - Используйте абстрактные классы для источников данных
   - Следуйте принципу инверсии зависимостей

2. **Обработка данных**
   - Используйте DTO для преобразования данных
   - Добавляйте валидацию данных
   - Обрабатывайте ошибки на уровне репозитория