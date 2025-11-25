- [1. What Is Flutter?](#1-what-is-flutter)
- [2. One Codebase, Multiple Apps](#2-one-codebase-multiple-apps)
- [3. From Flutter Code To Platform Code](#3-from-flutter-code-to-platform-code)
- [4. Flutter Is Not A Programming Language!](#4-flutter-is-not-a-programming-language)
- [5. Target Platforms](#5-target-platforms)
- [6. Flutter Setup](#6-flutter-setup)
  - [6.1. Windows](#61-windows)
- [7. Target Platform Tools \& Devices Setup](#7-target-platform-tools--devices-setup)
- [8. About Material Design](#8-about-material-design)
- [9. Why A Backend?](#9-why-a-backend)
- [10. HTTP?](#10-http)
- [11. Different HTTP Methods](#11-different-http-methods)
- [12. Commands](#12-commands)

# 1. What Is Flutter?

- UI Framework
  - Code packages & utility functions for writing cross platform app code.
- Collection of Tools CLI & software that helps with developing, testing & building cross-platform apps.
- Flutter allows you to build multi-platform apps based on one single codebase and programming language.

# 2. One Codebase, Multiple Apps

- **Single Codebase**
  - Android
  - iOS
  - Windows
  - macOS
  - Linux
  - Web

# 3. From Flutter Code To Platform Code

- Single Codebase -- Flutter translates that code to platform-specific machine code.
- Machine Code
  - Android
  - iOS

# 4. Flutter Is Not A Programming Language!

- It's a **framework** for building user interfaces with **Dart**.
- **Framework**
  - A collection of packages & utility functions you may use in your code.
- **Dart**
  - A programming language developed by Google.
  - **Main usage:** Flutter app development.

# 5. Target Platforms

- Platforms supported by Flutter
  - **Mobile Apps**
    - iOS.
    - Android.
    - **Initially, Flutter supported only mobile apps.**
  - **Web**
    - Modern browsers
  - Desktop Apps
    - Windows
    - macOS
    - Linux
- Whilst you can write the code for all platforms on the same machine, you can only test & run iOS & macOS apps on macOS machines, Windows apps on Windows machines and Linux apps on Linux machines!
- Android and web apps can be built on all operating systems.

# 6. Flutter Setup

- **Flutter SDK**
  - For managing Flutter projects.
- **Git**
  - Version control software, used internally by Flutter SDK.
- Platform Tools
  - **Android Studio**
    - Used by Flutter SDK & needed for Android app deployment.
  - **XCode**
    - Used by Flutter SDK & needed for iOS app deployment.
- Virtual Devices
  - **Android**
    - Preview Flutter apps on virtual Android devices.
  - **iOS**
    - Preview Flutter apps on virtual iOS devices.

## 6.1. Windows

- Git
- Vscode
- Flutter SDK
- Android Studio

# 7. Target Platform Tools & Devices Setup

- TODO: DIAGRAM

# 8. About Material Design

- **Google's flexible design system**

  - A set of suggestions, rules & guidelines that help you build beautiful user interfaces.
  - Highly customizable and extendable.

# 9. Why A Backend?

- Flutter App
- Runs on the user's device / mobile
- phone
- Data is only stored locally (e.g.,
- lost if the device is replaced)
- Backend Server
- Communication
- via HTTP requests
- Other users have no access to it
- (→ bad if data should be shared)
- Runs on some server, somewhere
- “in the internet”
- Data is stored in a central, remote
- place (e.g., SQL database)
- App users from all over the world
- can interact with same data

# 10. HTTP?

- TODO: DIAGRAM

# 11. Different HTTP Methods

- `GET`
  - Typically used to fetch data.
- `POST`
  - Typically used to add new data.
- `PUT`
  - Typically used to overwrite data.
- `PATCH`
  - Typically used to update data.
- `DELETE`
  - Typically used to delete data.
- **But:** It's the server that controls what happens when a request arrives!

# 12. Commands
