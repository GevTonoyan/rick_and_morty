# Rick and Morty

A Flutter project based on the **Rick and Morty** universe, displaying characters and their details
with options for users to mark favorite characters and access cached data for faster performance.

## Project Overview

This project is built using the **Flutter** framework, following a feature-based and **clean
architecture** approach. We leverage **MobX** as the state management solution, creating a reactive
and efficient UI experience. Additionally, the app is designed with flexibility and scalability in
mind, allowing for easy maintenance and future extensions.

### Tech Stack

- **Flutter**: The app’s core framework.
- **Dio**: For HTTP networking.
- **GoRouter**: For managing navigation.
- **MobX**: For managing the business logic layer.
- **GetIt**: Dependency injection for modular and testable code.
- **SharedPreferences**: For persistent data storage.
- **Freezed**: For generating immutable data models.

## Architecture

The app follows **Clean Architecture** principles, structuring code into clear layers to separate
concerns, improve maintainability, and enable easy scaling. The architecture is organized into the
following layers:

1. **Data Layer**: Handles data fetching from APIs and caching using Dio, SharedPreferences, and
   Freezed-generated models. This includes both remote and local data sources.
2. **Domain Layer**: Contains entities and use cases that define the business logic of the app.
3. **Presentation Layer**: Uses MobX as the state management solution. UI components observe the
   MobX store and respond reactively to state changes.

### Key Architectural Choices

- **Feature-Based Structure**: The app is organized by feature modules, each containing the data,
  domain, and presentation components specific to that feature.
- **Dependency Injection with GetIt**: Using GetIt for dependency injection ensures that
  dependencies are injected at runtime, supporting modularity and testability.
- **Data Model Generation with Freezed**: Freezed is used for creating immutable data models,
  simplifying data handling and reducing potential errors.
- **Persistent Data Storage**: Liked characters are stored in `SharedPreferences` using a Set for
  constant-time searching. This approach optimizes performance for managing favorite character IDs.

## Features

### Characters Screen

- Displays characters in a grid format.
- Allows users to like/unlike characters. Liked statuses are persisted across sessions
  with `SharedPreferences`.

### Character Details Screen

- Provides detailed information for each character.
- Caches data for faster retrieval on subsequent views.

### Theming

- **AppTheme** is used to manage themes across the app. This includes an abstraction for color
  palettes, allowing for easy theme customization and expansion.
- **Current Theme**: Light theme. The architecture is flexible, so additional themes (e.g., dark
  mode) can be easily added.

### Caching

- **Character Detail Caching**: Character details are cached locally to enhance performance,
  minimizing network requests for frequently accessed character data.

## Installation

1. Clone the repository:
   ```bash
   git clone git@github.com:GevTonoyan/rick_and_morty.git (SSH)
    git clone https://github.com/GevTonoyan/rick_and_morty.git (HTTPS)
   cd rick_and_morty
   flutter pub get
   flutter run
