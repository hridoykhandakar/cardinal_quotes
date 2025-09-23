# cardinal_quotes

Cardinal Quotes is a Flutter application featuring a multi-tab experience with quotes, sounds, and well‑being tools. The app includes authentication screens, a themed UI, SVG‑based icons, and a bottom navigation bar.

## Features

- Bottom navigation with tabs: **Home**, **Sounds**, **Soul**, **Quotes**, **More**
- Authentication screens: **Sign In** and **Sign Up**
- Theming via a centralized `appTheme()` and `AppColors`
- SVG assets for icons and illustrations (`flutter_svg`)
- Pre-bundled images and SVGs in `assets/images`

## Tech Stack

- **Flutter** (Material)
- **Dart SDK**: ^3.8.1 (see `pubspec.yaml`)
- **Packages**:
  - `flutter_svg: ^2.2.1`
  - `cupertino_icons: ^1.0.8`

## Getting Started

### Prerequisites

- Install Flutter (stable channel) and set up your environment: `https://docs.flutter.dev/get-started/install`
- Ensure you have a compatible Dart SDK (project targets ^3.8.1)
- Platform toolchains as needed (Android Studio/Xcode, device/emulator)

### Setup

```bash
flutter pub get
```

### Run

```bash
# Run on a connected device or emulator
flutter run

# Or specify a platform/device
flutter run -d chrome   # Web
flutter run -d android  # Android
flutter run -d ios      # iOS (macOS only)
```

## App Entry and Routes

Entry point: `lib/main.dart`

Configured routes:

- `/home` → `HomePage()` / `HomeView`
- `/sounds` → `SoundsScreen`
- `/signIn` → `SignInView` (initial route)
- `/signUp` → `SignupView`

The `HomePage` manages bottom navigation and switches between tab pages. The app theme and colors are provided by `core/theme/theme.dart` and `core/constants/app_colors.dart`.

## Project Structure

```
lib/
  core/
    constants/           # Colors, static data
    theme/               # App theme
    widgets/             # Reusable widgets
  features/
    auth/                # Sign in / Sign up views
    home/                # Home feature
    sounds/              # Sounds feature
  main.dart              # App entry

assets/
  images/
    icons/
    bottom_nav/
    home_card/
    sidebar/
```

## Assets

Assets are declared in `pubspec.yaml` under `flutter.assets`:

- `assets/images/`
- `assets/images/icons/`
- `assets/images/bottom_nav/`
- `assets/images/home_card/`
- `assets/images/sidebar/`

SVG rendering is provided by `flutter_svg`. Bottom nav icons are loaded from `assets/images/bottom_nav`.

## Linting

The project uses `flutter_lints: ^5.0.0` via `analysis_options.yaml`.

## Troubleshooting

- If assets do not appear, ensure you ran `flutter pub get` and that paths in `pubspec.yaml` match the actual directories. Hot restart or `flutter clean` may help.
- On Windows, if Gradle cache issues occur: `flutter clean && flutter pub get`.
- For iOS, open the iOS workspace in Xcode after running `pod install` (on macOS).

## Useful Links

- Flutter docs: `https://docs.flutter.dev/`
- flutter_svg: `https://pub.dev/packages/flutter_svg`

## License

This repository currently does not include a license. Add a `LICENSE` file if you intend to open-source or distribute the app.
