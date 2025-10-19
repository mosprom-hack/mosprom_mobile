<div align="center">
  <img src="android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png" alt="FUSE App Icon" width="120"/>

  # FUSE

  **Текущая версия: 1.0.0**

  Мобильное приложение социальной сети с сообществами по интересам для молодежи и сотрудников технологических компаний.
</div>

## Описание

FUSE — это платформа, которая объединяет людей с общими интересами через сообщества. Пользователи могут создавать и подписываться на сообщества, делиться контентом и получать персонализированную ленту с постами из подписок и рекомендованным контентом.

### Основные возможности

- Создание и управление профилем пользователя
- Создание и подписка на сообщества по интересам
- Публикация и просмотр постов
- Персонализированная лента контента
- Взаимодействие с контентом сообществ

## Технологический стек

- **Framework**: Flutter, Dart
- **State Management**: flutter_bloc
- **Code Generation**: freezed
- **HTTP Client**: dio
- **Dependency Injection**: get_it
- **Navigation**: go_router (с поддержкой deep linking)
- **Icons**: flutter_lucide

## Архитектура

Проект построен на принципах **Clean Architecture** с разделением на три слоя:

### 1. Data Layer (Слой данных)
- Источники данных (remote/local datasources)
- Модели данных (freezed models)
- Реализация репозиториев

### 2. Domain Layer (Бизнес-логика)
- Сущности (entities)
- Интерфейсы репозиториев
- Use cases
- Обработка ошибок (failures)

### 3. Presentation Layer (UI)
- Страницы приложения (pages)
- BLoC компоненты для управления состоянием
- Переиспользуемые виджеты

### Структура проекта

```
lib/
├── app/              # Уровень приложения (router, services)
├── core/             # Утилиты, константы, DI
├── domain/           # Бизнес-логика
├── data/             # Работа с данными
├── presentation/     # UI и BLoC
└── ui/               # Общие UI компоненты
```

## Установка и запуск

### Требования

- Flutter SDK (latest stable)
- Dart SDK
- Android Studio / Xcode (для соответствующей платформы)
- Git

### Шаги для запуска

1. Клонируйте репозиторий:
```bash
git clone https://github.com/yourusername/mikron_mobile.git
cd mikron_mobile
```

2. Установите зависимости:
```bash
flutter pub get
```

3. Запустите приложение:
```bash
flutter run
```

### Анализ кода

Для проверки качества кода:
```bash
flutter analyze
```

## Backend API

Документация API доступна по адресу: https://mikron-back.onrender.com/api-docs/

## Скачать приложение

[Ссылка на APK будет добавлена позже]

Для получения доступа в TestFlight напишите в Telegram: [@maximcandy](https://t.me/maximcandy)

## Платформы

- Android
- iOS

---

## Контакты

**Разработчик**: Владислав Осин
