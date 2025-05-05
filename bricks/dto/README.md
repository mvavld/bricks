# 📦 Шаблон DTO

## 📁 Структура Файлов

```
lib/
├── data/
│   └── dto/
│      └── example_dto.dart
│
└── domain/
    └── entities/
        └── example_entity.dart
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

2. **Создание DTO**
   ```bash
   mason make dto --on-conflict append
   ```

3. **Ввод Названия Класса**
   - Следуйте инструкциям в консоли для ввода названия класса

## 📝 Примечания
- Шаблон следует принципам чистой архитектуры с разделением на data и domain слои
- DTO (Data Transfer Object) используется для передачи данных между слоями
- Entity представляет бизнес-модель в domain слое

## 💡 Примеры Использования

### Создание DTO для пользователя

1. **Создание DTO**
   ```bash
   mason make dto --on-conflict append
   # Введите: User
   ```

2. **Структура созданных файлов**
   ```
   lib/
   ├── data/
   │   └── dto/
   │      └── user_dto.dart
   │
   └── domain/
       └── entities/
           └── user_entity.dart
   ```

3. **Пример использования в репозитории**
   ```dart
   // user_repository_impl.dart
   class UserRepositoryImpl implements UserRepository {
     final UserDataSource _dataSource;

     @override
     Future<UserEntity> getUser(String id) async {
       final userDto = await _dataSource.getUser(id);
       return userDto.toEntity();
     }
   }
   ```

### Лучшие Практики

1. **Организация кода**
   - Добавляйте методы преобразования (toEntity, fromEntity)
   - Следуйте принципу единой ответственности