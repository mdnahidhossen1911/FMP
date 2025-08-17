# FMP (Flutter MVVM Provider CLI)

![flutter-task-manager](https://raw.githubusercontent.com/mdnahidhossen1911/FMP/refs/heads/master/fmp.png)

**FMP** is a CLI tool for automatically generating a **Flutter MVVM (Model-View-ViewModel)** project structure.  
It follows **Clean Code** and **SOLID principles**, making it suitable for professional Flutter development.

---

## Features

- **MVVM Architecture** (Models, Views, ViewModels, Services, Data, Utils)
- **Clean & Scalable Project Structure**
- **Provider State Management**
- **Service Locator with get_it**
- **API Handling with Exceptions & Response Wrappers**
- **Reusable Components & Utilities**
- **Routing with go_router**
- **Theme Management**
- **Boilerplate Reduction**

---

## Generated Project Structure

```
lib
├── models
├── views
├── viewmodels
├── services
├── data
│   ├── network
│   │   ├── base_api_service.dart
│   │   └── network_api_service.dart
│   ├── exceptions
│   │   └── app_exception.dart
│   └── response
│       ├── api_response.dart
│       └── status.dart
├── utils
│   ├── components
│   │   └── snack_bar.dart
│   ├── app_colors.dart
│   ├── assets_path.dart
│   └── app_urls.dart
├── routes
│   └── app_router.dart
├── themes
│   └── app_theme.dart
├── main_app.dart
└── locator.dart

assets
├── images
├── icons
├── animations
└── fonts
```

---

## Installation

```bash
dart pub global activate fmp
```

> Make sure your `pub global bin` path is added to your system environment variables.

---

## Usage

### Generate Full Project Structure

```bash
fmp
```

The CLI will ask for confirmation. Press `y` to continue and it will automatically create the full MVVM project structure with all necessary folders and files.

---

### File Generation

The CLI automatically creates these files if they do not exist:

- `lib/main.dart`
- `lib/app.dart`
- `lib/locator.dart`
- `lib/utils/app_colors.dart`
- `lib/utils/app_urls.dart`
- `lib/utils/assets_path.dart`
- `lib/utils/components/snack_bar.dart`
- `lib/themes/app_theme.dart`
- `lib/routes/app_router.dart`
- `lib/services/data/exceptions/app_exception.dart`
- `lib/services/data/network/base_api_service.dart`
- `lib/services/data/network/network_api_service.dart`
- `lib/services/data/response/api_response.dart`
- `lib/services/data/response/status.dart`
- `pubspec.yaml`

All files are placed inside the `lib` and `assets` folders automatically.

---

## Dependencies

`pubspec.yaml` automatically includes:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons:
  provider:
  get_it:
  go_router:
  shared_preferences:
  flutter_svg:
  http:
```

---

## Best Practices

- Write clean, readable, and maintainable code.
- Refactor reusable parts into widgets inside `utils/components`.
- Strictly follow MVVM architecture.
- Adhere to SOLID principles.  


