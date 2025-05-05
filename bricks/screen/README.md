# 🖥️ Шаблон Экрана

## 📁 Структура Файлов

```
lib/
└── views/
    ├── router/
    │   └── event.dart
    └── screens/
        └── example/
            ├── bloc/
            │   ├── example.dart
            │   ├── example_bloc.dart
            │   ├── example_event.dart
            │   └── example_state.dart
            ├── widgets/
            └── example_screen.dart
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

2. **Создание Экрана**
   ```bash
   mason make screen --on-conflict append
   ```

3. **Ввод Названия Экрана**
   - Следуйте инструкциям в консоли для ввода названия вашего экрана

## 📝 Примечания
- Шаблон следует принципам чистой архитектуры с использованием BLoC для управления состоянием
- Каждый экран имеет свой собственный bloc, events, state
- Директория widgets предназначена для компонентов, специфичных для экрана

## 💡 Примеры Использования

### Создание экрана профиля пользователя

1. **Создание экрана**
   ```bash
   mason make screen --on-conflict append
   # Введите: UserProfile
   ```

2. **Структура созданных файлов**
   ```
   lib/
   └── views/
       └── screens/
           └── user_profile/
               ├── bloc/
               │   ├── user_profile.dart
               │   ├── user_profile_bloc.dart
               │   ├── user_profile_event.dart
               │   └── user_profile_state.dart
               ├── widgets/
               └── user_profile_screen.dart
   ```

3. **Пример использования в роутере**
   ```dart
   // router/event.dart
   case '/user-profile':
     return MaterialPageRoute(
       builder: (_) => const UserProfileScreen(),
     );
   ```

### Лучшие Практики

1. **Организация кода**
   - Храните бизнес-логику в bloc
   - Используйте widgets директорию для переиспользуемых компонентов
   - Разделяйте события по типам (например, UserProfileLoadEvent, UserProfileUpdateEvent)

2. **Управление состоянием**
   - Используйте sealed классы для состояний
   - Обрабатывайте все возможные состояния в UI
   - Добавляйте обработку ошибок

3. **Тестирование**
   - Пишите тесты для bloc
   - Тестируйте UI компоненты
   - Используйте mock для зависимостей
