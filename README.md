# Meals App

Meals App is a Flutter application to browse meals, view details, and mark favorites. It demonstrates clean UI, navigation, animations, and state management with Riverpod.

## Features

- Browse meals and open detailed pages
- Mark/unmark meals as favorites (Riverpod StateNotifier)
- Smooth image loading with Hero + FadeInImage
- Animated favorite icon (AnimatedSwitcher + ScaleTransition)
- Responsive layout

## Tech Stack

- Flutter, Dart
- flutter_riverpod (state management)
- Navigator 1.0 (routing)
- Hero, AnimatedSwitcher, ScaleTransition (animations)
- transparent_image (placeholder image)

## Getting Started

Prerequisites:
- Flutter SDK installed: https://docs.flutter.dev/get-started/install

Run locally:
1. flutter pub get
2. flutter run

## Project Structure

- lib/models: Data models (e.g., Meal)
- lib/providers: Riverpod providers (favorites, etc.)
- lib/widgets: Reusable UI components (MealItem, traits)
- lib/screens: App screens (Meals list, Meal details)

## How It Works

- Favorites: favoriteMealsProvider manages a List<Meal> via StateNotifier. Toggling updates state and UI.
- Navigation: Navigator.push to open MealDetailsScreen.
- Animations: 
  - Hero for shared image transitions between list and detail.
  - AnimatedSwitcher + ScaleTransition to animate the favorite icon.

## License

This project is for learning