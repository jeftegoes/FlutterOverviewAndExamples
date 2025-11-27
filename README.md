- [1. What Is Flutter?](#1-what-is-flutter)
- [2. One Codebase, Multiple Apps](#2-one-codebase-multiple-apps)
- [3. From Flutter Code To Platform Code](#3-from-flutter-code-to-platform-code)
- [4. Flutter Is Not A Programming Language!](#4-flutter-is-not-a-programming-language)
- [5. Target Platforms](#5-target-platforms)
- [6. Flutter Setup](#6-flutter-setup)
  - [6.1. Windows](#61-windows)
- [7. Target Platform Tools \& Devices Setup](#7-target-platform-tools--devices-setup)
- [8. About Material Design](#8-about-material-design)
- [9. Dart \& Flutter Code Is Compiled](#9-dart--flutter-code-is-compiled)
- [10. Two Categories of "Words"](#10-two-categories-of-words)
- [11. How Flutter Apps Become Active](#11-how-flutter-apps-become-active)
- [12. It's all about Widgets!](#12-its-all-about-widgets)
  - [12.1. Flutter UIs Are Built With Widgets](#121-flutter-uis-are-built-with-widgets)
  - [12.2. It's a Widget Tree!](#122-its-a-widget-tree)
- [13. Functions: "Code on Demand"](#13-functions-code-on-demand)
- [14. Functions \& Parameters](#14-functions--parameters)
  - [14.1. Named vs Positional Arguments](#141-named-vs-positional-arguments)
  - [14.2. Understanding "const"](#142-understanding-const)
- [15. Scaffold Class](#15-scaffold-class)
- [16. Understanding Types](#16-understanding-types)
  - [16.1. Some Core Types](#161-some-core-types)
  - [16.2. Widgets Are Objects](#162-widgets-are-objects)
  - [16.3. Understanding Generic Types](#163-understanding-generic-types)
- [17. Understanding Classes](#17-understanding-classes)
- [18. Objects = Data Structures](#18-objects--data-structures)
- [19. Objects Are Constructed From Classes](#19-objects-are-constructed-from-classes)
- [20. Understanding Variables](#20-understanding-variables)
- [21. "final" vs "const" vs "var"](#21-final-vs-const-vs-var)
- [22. Building Custom Widgets](#22-building-custom-widgets)
- [23. Widgets Are Complex Objects](#23-widgets-are-complex-objects)
- [24. Column \& Row](#24-column--row)
- [25. Cross-Widget State Management](#25-cross-widget-state-management)
  - [25.1. The Problem](#251-the-problem)
  - [25.2. How Riverpod Works](#252-how-riverpod-works)
- [26. Explicit vs Implicit Animations](#26-explicit-vs-implicit-animations)
- [27. Why A Backend?](#27-why-a-backend)
- [28. HTTP?](#28-http)
- [29. Different HTTP Methods](#29-different-http-methods)
- [30. Commands](#30-commands)
- [31. Publishing iOS \& Android Apps](#31-publishing-ios--android-apps)
- [32. Tips](#32-tips)

# 1. What Is Flutter?

- UI Framework
  - Code packages & utility functions for writing cross platform app code.
- Collection of Tools CLI & software that helps with developing, testing & building cross-platform apps.
- Flutter allows we to build multi-platform apps based on one single codebase and programming language.

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
  - A collection of packages & utility functions we may use in our code.
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
- Whilst we can write the code for all platforms on the same machine, we can only test & run iOS & macOS apps on macOS machines, Windows apps on Windows machines and Linux apps on Linux machines!
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
  - A set of suggestions, rules & guidelines that help us build beautiful user interfaces.
  - Highly customizable and extendable.

# 9. Dart & Flutter Code Is Compiled

1. Parsed from top to bottom.

```dart
void main() {
  runApp(...);
}
```

2. Compiled by Dart & Flutter tools.
3. Cxecuted on the mobile devices.
   `<native iOS or Android machine code>`
   TODO: DIAGRAM

# 10. Two Categories of "Words"

- **Keywords**
  - Built into the programming language.
  - Have clear, specific meanings.
- **Identifiers**
  - Defined by developers
  - Used for identifying "things" in code.

# 11. How Flutter Apps Become Active

1. `main()` function gets executed automatically.
   1. By Dart, when executing the compiled app on the target device.
2. `runApp()` should be called inside of `main()`.
   1. `runApp()` "tells" Flutter what to display on the screen (i.e., which UI elements to display).
3. Pass the to-be-displayed "widget tree" to `runApp()`.
   1. A "widget tree" is a combination of (nested) Flutter widgets that build the overall user interface.

# 12. It's all about Widgets!

- Flutter UIs are created by combining & nesting Widgets.
- Flutter provides many built-in Widgets e.g., Buttons, form inputs, layout widgets, ...
- We can also build our own Widgets Based on the built-in Widgets.

## 12.1. Flutter UIs Are Built With Widgets

- When using Flutter, you build your user interface with code.
- A combination of widgets.
- Widgets are nested into each other ->

```dart
Center(
  child: Text('Hello World'),
);
```

TODO: DIAGRAM

- "Widget Tree".

- Built-in Center widget centers its content horizontally + vertically.
- Built-in Text widget displays some text on the screen.

## 12.2. It's a Widget Tree!

TODO: DIAGRAM

# 13. Functions: "Code on Demand"

- **Function Definition**

  ```dart
    void doSomething() {
      ...
    }
  ```

  - `doSomething` is the function name (i.e., it's identifier).

- **Function Usage**

  ```dart
    void main() {
      doSomething();
      doSomething();
    }
  ```

- Functions can be used ("called") in your code **as often as needed**.

# 14. Functions & Parameters

- Functions may take input values — so called "Parameters" or "Arguments".
- **No Parameters**
  - `void main() {...}`
- **1 Parameter**
  - `void print(text) {...}`
- **2 Parameters**
  - `void add(a, b) {...}`
    - Multiple parameters are separated by commas.
- (these are just examples — functions can accept as many arguments / parameters as needed).

## 14.1. Named vs Positional Arguments

- Functions may receive input values as "named" or "positional" arguments.
- **Named Arguments**
  - `add(num1: 1, num2: 5)`
    - Names of arguments must be specified to pass values to those arguments.
- **Positional Arguments**
  - `add(1, 5)`
    - Argument values are mapped by position (first expected parameter receives first argument etc.)

## 14.2. Understanding "const"

- `const` helps Dart optimize runtime performance.
- `const Text('Hello World!')`
  - Defined & used for the first time in the app.
  - Defined & used for the second time in the app

# 15. Scaffold Class

- https://api.flutter.dev/flutter/material/Scaffold-class.html

# 16. Understanding Types

- Dart is a type-safe language
- All values are of certain Types
- TODO: DIAGRAM

## 16.1. Some Core Types

| int    | Integer numbers               | Numbers without decimal places             | 29, -15          |
| ------ | ----------------------------- | ------------------------------------------ | ---------------- |
| double | Fractional numbers            | Numbers with decimal places                | 3.91, -12.81     |
| num    | Integer or fractional numbers | Numbers with or without decimal places     | 15, 15.01, -2.91 |
| String | Text                          | Text, wrapped with single or double quotes | 'Hello World'    |
| bool   | Boolean values                | true or false                              | true, false      |
| Object | Any kind of object            | The base type of all values                | 'Hi', 29, false  |

## 16.2. Widgets Are Objects

- Widgets = Objects = Data Structures in Memory
  - **Objects:** Core Dart Concept!

## 16.3. Understanding Generic Types

- Generic Types are "flexible types" that "work together" with other Types.
- **E.g., list of hobbies**
  - ['Cooking', 'Sports', 'Reading']
    - `List<string>`
- **E.g., sensor data**
  - [5.91, 3.87. 1.21]
    - `List<double>`

# 17. Understanding Classes

- Dart is an object-oriented language.
  - Every value is an object.
- **Primitive Values**
  - **Text**
    - 'Hello World'
  - **Numbers**
    - 30, 12.31
  - **...**
- **More Complex Values**
  - e.g., Widgets, Gradient Config Object.
    - Created based on blueprints: Classes.

# 18. Objects = Data Structures

- Objects are data structures stored in (computer) memory.
- **Data**
  - Variables / properties.
- **Functions**
  - Methods.
- Objects help with organizing 15. data & separating logic.

# 19. Objects Are Constructed From Classes

- Class -> Object
- Object is created by calling the "constructor function" of a class.
- Constructor Functions
  - Creates the object, performs (optional) initialization work, stores it in memory etc.

# 20. Understanding Variables

- Variables are "Data Containers".
- `var greetingText` = "Hello World"
  - Variable declaration -> (Value) Assignment Operator -> Value (Text / String).

# 21. "final" vs "const" vs "var"

- `var`
  - Creates a new variable that will be re-assigned at some point.
  - Use the type (e.g., String) instead of var if the variable has no initial value.
  - Otherwise, the type can be inferred by Dart.
- `final`
  - Create a new variable that will (and can) never be re-assigned.
  - Prefer over var to avoid unintended re-assignments (e.g., by other developers).
- `const`
  - Create a new compile time constant
  - Will (and can) never be re-assigned & value is "hardcoded" (fixed) at compile-time.
  - Can't be used if some code must be executed in order to derive the value.

# 22. Building Custom Widgets

- **Main App**
  ```dart
  Column(
    children: [
      Product('Cup'),
      Product('Book'),
      Product('Guitar'),
    ]
  );
  ```
- "Product" is a re-usable custom widget Custom "Product" Widget.
- **Custom "Product" Widget**
  ```dart
  Card(
    child: Column(
      Text(title)
    ),
  );
  ```

# 23. Widgets Are Complex Objects

- **Used in code**
  - `Text('Hi there!')`
- **Created when running the app**
  - **Object**
    - Contains useful render information for Flutter

# 24. Column & Row

- Column() & Row() can be used to place **multiple child widgets next to each other**.
- `Column()`
  - **Main Axis:** Vertical Axis
  - **Cross Axis:** Horizontal Axis
  - By default, occupies the entire available height but only the width required by its content (children).
- `Row()`
  - **Main Axis:** Horizontal Axis
  - **Cross Axis:** Vertical Axis
  - By default, occupies the entire available width but only the height required by its content (children).

# 25. Cross-Widget State Management

## 25.1. The Problem

TODO: DIAGRAM

## 25.2. How Riverpod Works

TODO: DIAGRAM

# 26. Explicit vs Implicit Animations

- **Explicit**
  - You control the entire animation.
  - More control but also more complexity.
  - Can often be avoided (by using pre-built Widgets).
- **Implicit**
  - Flutter controls the animation.
  - Less control and therefore less complexity.
  - Use pre-built animation widgets as often as possible!

# 27. Why A Backend?

- **Flutter App**
  - Runs on the user's device / mobile phone.
  - Data is only stored locally (e.g., lost if the device is replaced).
  - Other users have no access to it (-> bad if data should be shared).
- **Backend Server**
  - Runs on some server, somewhere "in the internet".
  - Data is stored in a central, remote place (e.g., SQL database).
  - App users from all over the world can interact with same data.

# 28. HTTP?

- TODO: DIAGRAM

# 29. Different HTTP Methods

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

# 30. Commands

- Create a new flutter project.
  - `flutter create first_app`
- Run flutter project.
  - `flutter run`
- Clean cache
  - `flutter clean`
- `flutter doctor`
- `dart fix --apply`

# 31. Publishing iOS & Android Apps

- Publish an Android App: https://docs.flutter.dev/deployment/android
- Publish an iOS App: https://docs.flutter.dev/deployment/ios

# 32. Tips

- To maintain , (comma).
  ````yaml
  formatter:
    trailing_commas: preserve```
  ````
