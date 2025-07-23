# Audiobook Flutter Frontend

A minimal, modern Flutter mobile app for browsing, purchasing, storing, and playing audiobooks.

## Features

- **Audiobook Store**
  - Browse catalog of audiobooks with covers, authors, price, and length.
  - Purchase titles (mock purchase simulation).
- **Library**
  - View and manage (delete) your locally owned audiobooks.
- **Player**
  - Play audiobooks with UI showing cover, title, author.
  - Play/pause, skip forward/backward 15 seconds.
  - Progress bar, persistent playback position.
  - Slider to seek to any location.
  - Remembers playback positions & library state between app restarts.

## Layout & Style

- Modern, minimal, light theme.
- Bottom nav bar: Store | Library | Player
- Each screen: top app bar, card/list layout
- Player: Cover image, progress bar, skip/play/slider controls

## Local Storage

- Uses `sqflite` for audiobooks and playback position (persistent).
- User data is never lost on restart.

## Architecture

- **Provider** for state management (`LibraryProvider`, `PlayerProvider`)
- **Screens**: Store, Library, Player (modular)
- **Mock** store (static catalog, can later add backend integration)

## Getting Started

- Run `flutter pub get`
- Launch with `flutter run`

## Environment

- No environment variables required
- All data stored locally, no sign up needed

## Extend

- Replace mock catalog with backend API for store.
- Integrate audio player plugin for real playback and downloads.

---

MIT Licensed. Modern UI. Ideal for small audio library or as a starter.
