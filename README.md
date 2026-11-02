# FoodGenius — Nutrition App

A Flutter/Dart mobile project for browsing and creating recipes, filtering by nutritional values and dietary preferences, and saving favorites.

## Preview

- [Watch the original demo recording](submission/FoodGenius%20Screenrecording.mp4)
- [Read the original project description (PDF)](submission/FoodGenius-Project_Description.pdf)
- [Original Android build (APK)](submission/FoodGenius.apk)

## Features

- Account registration and sign-in through Firebase Authentication.
- Recipe creation and browsing.
- Search filters for calories, protein, carbohydrates and fat.
- Dietary filters, including vegan and vegetarian preferences.
- Favorite recipes and a view of recipes created by the user.

## Technology

- Flutter and Dart.
- Firebase Authentication, Realtime Database and Storage.
- Provider for state propagation and Hive for local storage.

## Run locally

This is an older Flutter project. Its `pubspec.yaml` requires **Dart >=2.7.0 and <3.0.0** and uses legacy dependencies; it has not been migrated to Dart 3.

1. Clone the repository and choose a Flutter SDK whose bundled Dart version satisfies that constraint.
2. Configure your own Firebase project for the app's platform identifiers. Enable Authentication, Realtime Database and Storage, and provide the matching platform configuration files. The original backend's availability and data are not guaranteed.
3. Review the recipe model in `lib/db/recipes.dart` and the database access in `lib/db/firebase_db.dart` when setting up test data and access rules.
4. From the repository root, run:

```bash
flutter pub get
flutter run
```

The repository includes Android and iOS project directories. An iOS build also requires macOS/Xcode and matching Firebase configuration; no browser deployment is included.

## Structure

- `lib/screens/`: sign-in, home, search, recipe creation, favorites and profile screens.
- `lib/db/`: models, authentication and persistence helpers.
- `assets/`: app artwork.
- `android/` and `ios/`: native platform projects.
- `submission/`: original project description, demo video and APK.

## Repository maintenance

Generated build output, Dart tool caches and local IDE settings are excluded through `.gitignore`. `pubspec.lock`, the Hive adapter source and the original submission materials are retained.

The Dart package is named `foodgenius`; its internal package imports use the same name. Native application identifiers remain unchanged to preserve their existing platform configuration.

## Status

A coursework prototype preserved as a portfolio project. The original demo shows its historical behavior; current Firebase availability and current-device compatibility have not been revalidated.
