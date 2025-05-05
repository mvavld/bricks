# 🏗️ Flutter Template Bricks

Набор шаблонов для быстрой разработки Flutter приложений с использованием чистой архитектуры.

## 📦 Доступные Шаблоны

### 🖥️ Screen
Шаблон для создания экранов с BLoC паттерном.
```bash
mason make screen --on-conflict append
```

### 📚 Repository
Шаблон для создания репозиториев с поддержкой различных источников данных.
```bash
mason make repository --on-conflict append
```

### 📦 DTO
Шаблон для создания объектов передачи данных и сущностей.
```bash
mason make dto --on-conflict append
```

## 🚀 Быстрый Старт

1. **Установка Mason CLI**
   ```bash
   dart pub global activate mason_cli
   ```

2. **Создание mason.yaml**
   Создайте файл `mason.yaml` в корне вашего проекта со следующим содержимым:
   ```yaml
   bricks:
     screen:
       git:
         url: {{repository-url}}
         path: bricks/screen
     repository:
       git:
         url: {{repository-url}}
         path: bricks/repository
     dto:
       git:
         url: {{repository-url}}
         path: bricks/dto
   ```

3. **Установка шаблонов**
   ```bash
   mason get
   ```

4. **Использование шаблонов**
   - Следуйте инструкциям в README.md каждого шаблона

## 📝 Пример Использования

### Создание нового экрана с репозиторием

1. Создайте DTO:
   ```bash
   mason make dto --on-conflict append
   # Введите: User
   ```

2. Создайте репозиторий:
   ```bash
   mason make repository --on-conflict append
   # Введите: User
   # Введите: getUser
   ```

3. Создайте экран:
   ```bash
   mason make screen --on-conflict append
   # Введите: basket
   ```

## 🛠️ Требования

- Dart SDK
- Flutter SDK
- Mason CLI

## 📚 Документация

Подробная документация по каждому шаблону доступна в соответствующих директориях:
- [Screen Template](bricks/screen/README.md)
- [Repository Template](bricks/repository/README.md)
- [DTO Template](bricks/dto/README.md)
