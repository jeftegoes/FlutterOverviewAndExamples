- [1. Introduction](#1-introduction)
  - [1.1. What Is Flutter?](#11-what-is-flutter)
  - [1.2. One Codebase, Multiple Apps](#12-one-codebase-multiple-apps)
  - [1.3. From Flutter Code To Platform Code](#13-from-flutter-code-to-platform-code)
  - [1.4. Flutter Is Not A Programming Language!](#14-flutter-is-not-a-programming-language)
  - [1.5. Target Platforms](#15-target-platforms)
  - [1.6. Flutter Setup](#16-flutter-setup)
    - [1.6.1. Windows](#161-windows)
  - [1.7. Target Platform Tools \& Devices Setup](#17-target-platform-tools--devices-setup)
  - [1.8. About Material Design](#18-about-material-design)
  - [1.9. Dart \& Flutter Code Is Compiled](#19-dart--flutter-code-is-compiled)
  - [1.10. Two Categories of "Words"](#110-two-categories-of-words)
  - [1.11. How Flutter Apps Become Active](#111-how-flutter-apps-become-active)
  - [1.12. It's all about Widgets!](#112-its-all-about-widgets)
    - [1.12.1. Flutter UIs Are Built With Widgets](#1121-flutter-uis-are-built-with-widgets)
    - [1.12.2. It's a Widget Tree!](#1122-its-a-widget-tree)
  - [1.13. Functions: "Code on Demand"](#113-functions-code-on-demand)
  - [1.14. Functions \& Parameters](#114-functions--parameters)
    - [1.14.1. Named vs Positional Arguments](#1141-named-vs-positional-arguments)
    - [1.14.2. Understanding "const"](#1142-understanding-const)
  - [1.15. Scaffold Class](#115-scaffold-class)
  - [1.16. Understanding Types](#116-understanding-types)
    - [1.16.1. Some Core Types](#1161-some-core-types)
    - [1.16.2. Widgets Are Objects](#1162-widgets-are-objects)
    - [1.16.3. Understanding Generic Types](#1163-understanding-generic-types)
  - [1.17. Understanding Classes](#117-understanding-classes)
  - [1.18. Objects = Data Structures](#118-objects--data-structures)
  - [1.19. Objects Are Constructed From Classes](#119-objects-are-constructed-from-classes)
  - [1.20. Understanding Variables](#120-understanding-variables)
  - [1.21. "final" vs "const" vs "var"](#121-final-vs-const-vs-var)
  - [1.22. Building Custom Widgets](#122-building-custom-widgets)
  - [1.23. Widgets Are Complex Objects](#123-widgets-are-complex-objects)
  - [1.24. Column \& Row](#124-column--row)
  - [1.25. Functions As Values](#125-functions-as-values)
  - [1.26. Stateless vs Stateful Widgets](#126-stateless-vs-stateful-widgets)
  - [1.27. Summary](#127-summary)
- [2. Advanced Fundamentals](#2-advanced-fundamentals)
- [3. Navigation \& Multi-Screen Apps](#3-navigation--multi-screen-apps)
  - [3.1. A Stack of Screens](#31-a-stack-of-screens)
  - [3.2. A Stack of Screens](#32-a-stack-of-screens)
  - [3.3. The Stack Widget](#33-the-stack-widget)
- [4. Cross-Widget State Management](#4-cross-widget-state-management)
  - [4.1. The Problem](#41-the-problem)
  - [4.2. How Riverpod Works](#42-how-riverpod-works)
- [5. Explicit vs Implicit Animations](#5-explicit-vs-implicit-animations)
- [6. Connecting a Backend](#6-connecting-a-backend)
  - [6.1. Why A Backend?](#61-why-a-backend)
  - [6.2. HTTP?](#62-http)
  - [6.3. Different HTTP Methods](#63-different-http-methods)
- [7. Commands](#7-commands)
- [8. Publishing iOS \& Android Apps](#8-publishing-ios--android-apps)
- [9. Tips](#9-tips)
- [10. Firebase configuration](#10-firebase-configuration)
  - [10.1. Windows](#101-windows)

# 1. Introduction

## 1.1. What Is Flutter?

- UI Framework
  - Code packages & utility functions for writing cross platform app code.
- Collection of Tools CLI & software that helps with developing, testing & building cross-platform apps.
- Flutter allows we to build multi-platform apps based on one single codebase and programming language.

## 1.2. One Codebase, Multiple Apps

- **Single Codebase**
  - Android
  - iOS
  - Windows
  - macOS
  - Linux
  - Web

## 1.3. From Flutter Code To Platform Code

- Single Codebase -- Flutter translates that code to platform-specific machine code.
- Machine Code
  - Android
  - iOS

## 1.4. Flutter Is Not A Programming Language!

- It's a **framework** for building user interfaces with **Dart**.
- **Framework**
  - A collection of packages & utility functions we may use in our code.
- **Dart**
  - A programming language developed by Google.
  - **Main usage:** Flutter app development.

## 1.5. Target Platforms

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

## 1.6. Flutter Setup

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

### 1.6.1. Windows

- Git
- Vscode
- Flutter SDK
- Android Studio

## 1.7. Target Platform Tools & Devices Setup

- TODO: DIAGRAM

## 1.8. About Material Design

- **Google's flexible design system**
  - A set of suggestions, rules & guidelines that help us build beautiful user interfaces.
  - Highly customizable and extendable.

## 1.9. Dart & Flutter Code Is Compiled

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

## 1.10. Two Categories of "Words"

- **Keywords**
  - Built into the programming language.
  - Have clear, specific meanings.
- **Identifiers**
  - Defined by developers
  - Used for identifying "things" in code.

## 1.11. How Flutter Apps Become Active

1. `main()` function gets executed automatically.
   1. By Dart, when executing the compiled app on the target device.
2. `runApp()` should be called inside of `main()`.
   1. `runApp()` "tells" Flutter what to display on the screen (i.e., which UI elements to display).
3. Pass the to-be-displayed "widget tree" to `runApp()`.
   1. A "widget tree" is a combination of (nested) Flutter widgets that build the overall user interface.

## 1.12. It's all about Widgets!

- Flutter UIs are created by combining & nesting Widgets.
- Flutter provides many built-in Widgets e.g., Buttons, form inputs, layout widgets, ...
- We can also build our own Widgets Based on the built-in Widgets.

### 1.12.1. Flutter UIs Are Built With Widgets

- When using Flutter, we build our user interface with code.
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

### 1.12.2. It's a Widget Tree!

TODO: DIAGRAM

## 1.13. Functions: "Code on Demand"

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

- Functions can be used ("called") in our code **as often as needed**.

## 1.14. Functions & Parameters

- Functions may take input values — so called "Parameters" or "Arguments".
- **No Parameters**
  - `void main() {...}`
- **1 Parameter**
  - `void print(text) {...}`
- **2 Parameters**
  - `void add(a, b) {...}`
    - Multiple parameters are separated by commas.
- (these are just examples — functions can accept as many arguments / parameters as needed).

### 1.14.1. Named vs Positional Arguments

- Functions may receive input values as "named" or "positional" arguments.
- **Named Arguments**
  - `add(num1: 1, num2: 5)`
    - Names of arguments must be specified to pass values to those arguments.
- **Positional Arguments**
  - `add(1, 5)`
    - Argument values are mapped by position (first expected parameter receives first argument etc.)

### 1.14.2. Understanding "const"

- `const` helps Dart optimize runtime performance.
- `const Text('Hello World!')`
  - Defined & used for the first time in the app.
  - Defined & used for the second time in the app

## 1.15. Scaffold Class

- https://api.flutter.dev/flutter/material/Scaffold-class.html

## 1.16. Understanding Types

- Dart is a type-safe language
- All values are of certain Types
- TODO: DIAGRAM

### 1.16.1. Some Core Types

| int    | Integer numbers               | Numbers without decimal places             | 29, -15          |
| ------ | ----------------------------- | ------------------------------------------ | ---------------- |
| double | Fractional numbers            | Numbers with decimal places                | 3.91, -12.81     |
| num    | Integer or fractional numbers | Numbers with or without decimal places     | 15, 15.01, -2.91 |
| String | Text                          | Text, wrapped with single or double quotes | 'Hello World'    |
| bool   | Boolean values                | true or false                              | true, false      |
| Object | Any kind of object            | The base type of all values                | 'Hi', 29, false  |

### 1.16.2. Widgets Are Objects

- Widgets = Objects = Data Structures in Memory
  - **Objects:** Core Dart Concept!

### 1.16.3. Understanding Generic Types

- Generic Types are "flexible types" that "work together" with other Types.
- **E.g., list of hobbies**
  - ['Cooking', 'Sports', 'Reading']
    - `List<string>`
- **E.g., sensor data**
  - [5.91, 3.87. 1.21]
    - `List<double>`

## 1.17. Understanding Classes

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

## 1.18. Objects = Data Structures

- Objects are data structures stored in (computer) memory.
- **Data**
  - Variables / properties.
- **Functions**
  - Methods.
- Objects help with organizing 15. data & separating logic.

## 1.19. Objects Are Constructed From Classes

- Class -> Object
- Object is created by calling the "constructor function" of a class.
- Constructor Functions
  - Creates the object, performs (optional) initialization work, stores it in memory etc.

## 1.20. Understanding Variables

- Variables are "Data Containers".
- `var greetingText` = "Hello World"
  - Variable declaration -> (Value) Assignment Operator -> Value (Text / String).

## 1.21. "final" vs "const" vs "var"

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

## 1.22. Building Custom Widgets

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

## 1.23. Widgets Are Complex Objects

- **Used in code**
  - `Text('Hi there!')`
- **Created when running the app**
  - **Object**
    - Contains useful render information for Flutter

## 1.24. Column & Row

- `Column()` & `Row()` can be used to place **multiple child widgets next to each other**.
- `Column()`
  - **Main Axis:** Vertical Axis
  - **Cross Axis:** Horizontal Axis
  - By default, occupies the entire available height but only the width required by its content (children).
- `Row()`
  - **Main Axis:** Horizontal Axis
  - **Cross Axis:** Vertical Axis
  - By default, occupies the entire available width but only the height required by its content (children).

TODO: TABLE AND DIAGRAM

https://themobilecoder.com/axis-alignment-columns-rows-flutter/

## 1.25. Functions As Values

- In Dart, functions are also just values / objects!
- **Defining a Function**
  - `void start() { ... }`
    - Code inside the function does not yet execute — instead it's defined for execution in the future.
- **Calling a Function**
  - `start();`
    - Code defined inside the function is executed.
- **Using a Function as a Value**
  - `TextButton(onPressed: start)`
    - Code inside the function is not yet executed — instead the function may be called from inside the receiving object (e.g., widget).

## 1.26. Stateless vs Stateful Widgets

- **Stateless Widgets**
  - Don't manage any internal data.
  - Only update the screen if parent Widgets were updated ("re-rendered").
  - **Should be our default: Use as often as possible.**
- **Stateful Widgets**
  - Do manage internal data ("state").
  - When state changes, the Widget is re-rendered & the UI is updated.
  - Use whenever when we have changing data that should cause UI updates.

## 1.27. Summary

- **Starting Flutter Apps**
  - main.dart -> `main()` -> `runApp()`.
- **Widgets, Widgets, Widgets**
  - Flutter UIs are built by combining widgets.
  - Widgets are nested into each other ("widget tree").
- **Custom Widgets**
  - `StatelessWidget` doesn't change internally.
  - `StatefulWidget` updates the UI upon state changes.
- **Core Dart Features**
  - Types, functions, variables, classes, objects, ...
  - Let the code editor (e.g., VS Code) help you!
- **Configuring Widgets**
  - Many (built-in) widgets offer (named) configuration arguments.
  - Typically, configuration objects are used.

# 2. Advanced Fundamentals


# 3. Navigation & Multi-Screen Apps

- Allowing Users To Navigate Between Screens
- Managing Screen Stacks
- Working with Tab Bars
- Using Side Drawers

## 3.1. A Stack of Screens

- Screen Stack
- Navigator.push()
- Pushing MealsScreen
- CategoriesScreen
- MealsScreen
- Currently visible screen
- The top-most screen (in the stack of
- screens) is the one visible to the user
- The other screen widgets (on lower
- layers) are not or only partially visible

## 3.2. A Stack of Screens

- Screen Stack
- Navigator.pop()
- Remove MealsScreen
- MealsScreen
- CategoriesScreen
- Currently visible screen
- The top-most screen (in the stack of
- screens) is the one visible to the user

## 3.3. The Stack Widget

- Column
- Widget A
- Widget B
- Stack
- Widget A
- Widget B
- Widget C
- Multiple widgets are positioned next
- to each other along the Y-Axis
- e.g., a Text() above a TextField()
- Widget C
- Multiple widgets are positioned on top
- of each other along the Z-Axis
- e.g., a Text() on top of an Image()

# 4. Cross-Widget State Management

## 4.1. The Problem

TODO: DIAGRAM

## 4.2. How Riverpod Works

TODO: DIAGRAM

# 5. Explicit vs Implicit Animations

- **Explicit**
  - You control the entire animation.
  - More control but also more complexity.
  - Can often be avoided (by using pre-built Widgets).
- **Implicit**
  - Flutter controls the animation.
  - Less control and therefore less complexity.
  - Use pre-built animation widgets as often as possible!

# 6. Connecting a Backend

## 6.1. Why A Backend?

- **Flutter App**
  - Runs on the user's device / mobile phone.
  - Data is only stored locally (e.g., lost if the device is replaced).
  - Other users have no access to it (-> bad if data should be shared).
- **Backend Server**
  - Runs on some server, somewhere "in the internet".
  - Data is stored in a central, remote place (e.g., SQL database).
  - App users from all over the world can interact with same data.

## 6.2. HTTP?

- TODO: DIAGRAM

## 6.3. Different HTTP Methods

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

# 7. Commands

- Create a new flutter project.
  - `flutter create first_app`
- Run flutter project.
  - `flutter run` # Default mobile.
  - `flutter run -d chrome`
- Clean cache
  - `flutter clean`
- `flutter doctor`
- `dart fix --apply`

# 8. Publishing iOS & Android Apps

- Publish an Android App: https://docs.flutter.dev/deployment/android
- Publish an iOS App: https://docs.flutter.dev/deployment/ios

# 9. Tips

- To maintain , (comma) change analysis_options.yaml file.
  ````yaml
  formatter:
    trailing_commas: preserve```
  ````

# 10. Firebase configuration

## 10.1. Windows

1. https://firebase.google.com/docs/cli#setup_update_cli
   1. Install node https://nodejs.org/pt/download
   2. `npm install -g firebase-tools`
   3. `firebase login`
   4. `dart pub global activate flutterfire_cli`.
   5. Configure environment variables.
2. Configure your apps to use Firebase.
   1. `flutterfire configure` on project.
3. Initialize Firebase in your app.
   1. Enable Developer Mode in your system settings. Run `start ms-settings:developers`.
   2. `flutter pub add firebase_core`.
   3. `flutter pub add firebase_auth`.
   4. `flutter pub add firebase_storage`.
   5. start ms-settings:developers.
