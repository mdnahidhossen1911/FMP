# FMP (Flutter MVVM Provider CLI)
![flutter-task-manager](https://raw.githubusercontent.com/mdnahidhossen1911/FMP/refs/heads/master/fmp.png)



**FMP** is a CLI tool for generating a complete Flutter MVVM (Model-View-ViewModel) project structure.  
It follows professional developer standards with **Clean Code** and **SOLID principles**.

---

## Features

-  **MVVM Architecture** (Models, Views, ViewModels, Services, Data, Utils)
-  **Clean & Scalable Project Structure**
-  **Provider State Management**
-  **Service Locator with get_it**
-  **API Handling with Exceptions & Response Wrappers**
-  **Reusable Components & Utilities**
-  **Routing with go_router**
-  **Theme Management**
-  **Boilerplate Reduction**

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

Make sure the pub global bin path is added to your environment variables.

---

## Usage

### Create MVVM Module
```bash
fmp create module_name
```

This will generate:

```
lib/
  models/module_name_model.dart
  viewmodels/module_name_viewmodel.dart
  views/module_name_view.dart
```

### Generate Full Project Structure
```bash
fmp init
```

This will scaffold the **entire project structure** following MVVM + Provider standards.

---

## Dependencies

The following dependencies are auto-added in `pubspec.yaml` (without version numbers):

```yaml
dependencies:
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
- Strictly follow **MVVM architecture**.
- Adhere to **SOLID principles**.

---

## Example

```bash
# Initialize project structure
fmp init

# Create a feature module
fmp create auth
```

Output:

```
lib/
  models/auth_model.dart
  viewmodels/auth_viewmodel.dart
  views/auth_view.dart
```

---
