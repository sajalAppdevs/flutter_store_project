# Flutter Store Project

A modern Flutter e-commerce application built with BLoC pattern and REST API integration. This project demonstrates best practices in state management, API integration, and clean architecture principles in Flutter development.

## Features

- Clean Architecture with BLoC Pattern
- REST API Integration using HTTP package
- Responsive UI Design
- Custom Font Integration (Iran Sans)
- Cross-platform support (iOS, Android, Web, Desktop)

## Tech Stack

- Flutter SDK (>=3.1.0)
- State Management: flutter_bloc (^8.1.3)
- HTTP Client: http (^1.1.0)
- Object Equality: equatable (^2.0.5)
- UI Components: Material Design

## Project Structure

```
lib/
├── Shop/
│   ├── data/         # Data layer (Models, Repositories)
│   └── presentation/ # UI layer (Screens, Widgets)
└── assets/
    └── fonts/        # Custom fonts
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.1.0)
- Dart SDK (>=3.1.0)
- IDE (VS Code or Android Studio)

### Installation

1. Clone the repository
```bash
git clone [repository-url]
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run
```

## Architecture

This project follows the BLoC (Business Logic Component) pattern for state management, separating the application into three main layers:

- **Presentation Layer**: UI components and BLoC implementations
- **Domain Layer**: Business logic and use cases
- **Data Layer**: Data sources and repositories

## Development

### Code Style

The project uses `flutter_lints` for consistent code style. Run the following command to analyze the code:

```bash
flutter analyze
```

### Testing

Run the tests using:

```bash
flutter test
```

## Contributing

1. Fork the Project
2. Create your Feature Branch
3. Commit your Changes
4. Push to the Branch
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
