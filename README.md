# Flutter Flavor with FVM

A Flutter project using FVM (Flutter Version Management) and Flavor for managing development and production environments.

## Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [FVM](https://fvm.app/docs/getting_started/installation)
- [CocoaPods](https://cocoapods.org/) for iOS development
- Xcode for iOS development
- Android Studio for Android development

## Setup Project

Clone the repository and install dependencies:

```bash
git clone https://github.com/bindok1/flutter-flavor-fvm.git
cd flutter-flavor-fvm
fvm install
fvm flutter pub get
cd ios
pod install
cd ..
```

## Flavors

This project has two flavors: `dev` (development) and `prod` (production). To run a specific flavor, use the following commands:

### Development

```bash
fvm flutter run --flavor dev
```

### Production

```bash
fvm flutter run --flavor prod
```

Alternatively, in VS Code, select the appropriate launch configuration:

- `debug-dev`
- `debug-prod`
- `release-dev`
- `release-prod`

## Project Structure

```plaintext
your_project/
├── .vscode/ # VS Code configurations
│   └── launch.json # Launch configurations for flavors
├── ios/
│   ├── Runner/
│   │   └── Config/ # iOS flavor configurations
│   │       ├── dev.xcconfig
│   │       ├── prod.xcconfig
│   │       ├── debug-dev.xcconfig
│   │       ├── debug-prod.xcconfig
│   │       ├── release-dev.xcconfig
│   │       └── release-prod.xcconfig
│   └── Podfile
└── pubspec.yaml
```

## iOS Configuration

### Bundle IDs

- Development: `com.example.base_2.dev`
- Production: `com.example.base_2`

### Display Names

- Development: `Base 2 DEV`
- Production: `Base 2`

## VS Code Launch Configurations

The project includes the following launch configurations for flavors:

- `debug-dev`
- `debug-prod`
- `release-dev`
- `release-prod`

## Troubleshooting

### iOS Build Issues

1. Clean the build:

    ```bash
    flutter clean
    cd ios
    pod deintegrate
    pod install
    ```

2. Reset Xcode:
   - Clean Build Folder (`Cmd + Shift + K`)
   - Delete Derived Data

### FVM Issues

1. Verify FVM installation:

    ```bash
    fvm doctor
    ```

2. Reset FVM:

    ```bash
    fvm flutter clean
    fvm flutter pub get
    ```

## Contributing

1. Fork the repository.
2. Create a feature branch.
3. Commit your changes.
4. Push to the branch.
5. Create a Pull Request.

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).
