**OruPhones Flutter App - Authentication & Home UI Implementation**

This is a Flutter-based application built as part of the Flutter Internship Assessment for OruPhones. The project implements core app functionalities, including authentication, user state management, and a dynamic home screen UI with pagination and product listings.

**Features Implemented:**

1. Splash Screen

Checks if the user is already authenticated.

Navigates to the Home Screen if authenticated.

If the user is new and hasn't updated their name, redirects to the Confirm Name Screen.

Requests necessary permissions like Firebase push notifications.

2. Authentication Flow

Login OTP Screen: Allows users to enter their phone number and generate an OTP.

Verify OTP Screen: Users enter the received OTP to complete authentication.

Confirm Name Screen: If the user is new and hasn't set a name, they must enter a valid name before proceeding.

Authentication logic is implemented using Firebase Authentication and Provider for state management.

3. Home Screen

Implements a scrolling behavior similar to the OruPhones app.

Displays product cards with pagination support.

Liked Listings: If a user has liked listings, the product card heart icons are filled.

Cyclic Dummy Product Cards: Every 7th listing, a set of dummy product cards appear in cyclic rotation.

Login bottom sheet appears when an unauthenticated user tries to like a product.

4. Firebase Push Notifications

Uses Firebase Cloud Messaging (FCM) to handle push notifications.

Requests notification permissions on the Splash Screen.

Supports notifications in both foreground and background states.

**Tech Stack:**

Flutter & Dart

Firebase Authentication & Firestore

Firebase Cloud Messaging (FCM)

Provider (State Management)

Dio (for API Requests & Error Handling)

**Project Setup & Installation**

Clone the Repository
git clone https://github.com/your-username/oruphones-flutter.git
cd oruphones-flutter

Install Dependencies
flutter pub get

Set Up Firebase
Create a Firebase project.
Add your google-services.json (Android) and GoogleService-Info.plist (iOS) to the respective folders.
Enable Firebase Authentication and Firestore.

Run the App
flutter run

**Folder Structure**
lib/
│── main.dart  # Entry point
│
├── screens/
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── verify_otp_screen.dart
│   ├── confirm_name_screen.dart
│   ├── home_screen.dart
│
├── providers/
│   ├── auth_provider.dart  # Manages authentication state
│   ├── product_provider.dart  # Handles product data and pagination
│
├── services/
│   ├── firebase_service.dart  # Handles Firebase authentication
│   ├── notification_service.dart  # Manages push notifications
│
├── models/
│   ├── product_model.dart  # Defines product data structure
│
└── widgets/
    ├── product_card.dart  # Reusable product card UI component
    ├── bottom_sheets.dart  # Reusable bottom sheets for login prompts
