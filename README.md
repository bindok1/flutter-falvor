# E-Office Flutter Project

This project is built using Flutter 3.22.2. The application leverages Flutter's capabilities to deliver a cross-platform mobile experience with a focus on efficiency and performance.

## Technologies Used

- **Flutter**: Version 3.22.2, the primary framework for building the application.
- **NDK**: Version 23, the primary framework for building the application.
- **Dart**: The programming language used in Flutter for development.
- **Build Runner**: Used for code generation, such as creating model classes, JSON serialization, and other code based on annotations.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Flutter 3.22.2: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter installation.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/bindok1/e-office.git
   ```
2. Get the dependencies:
   ```bash
   flutter pub get
   ```
3. Code Generation with Build Runner
   This project uses Build Runner for code generation tasks. Run the following commands to generate necessary files:
   ```bash
   flutter run build_runner build --delete-conflicting-outputs
   ```
   Or alternatively, using Dart:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

### Building the Application

1. Build App Bundle
   To create an App Bundle for distribution on the Google Play Store, use the following command:
   ```bash
   flutter build appbundle --release -t lib/main.dart
   ```
2. Build APK
   To build the APK for testing or distribution, use the command below:
   ```bash
   flutter build apk --release -t lib/main.dart
   ```
