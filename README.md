# firebase_example

Create a cross-platform mobile application (iOS and Android) with Flutter and Dart that allows users to:
1. Sign up & log in using Firebase Authentication.
2. Store and retrieve data in Firebase Firestore (for example, products or items to purchase).
3. Integrate payments with the Stripe sandbox (test mode) to handle a basic checkout flow.


Core Requirements

1. Flutter App Setup
   • Use Flutter (latest stable release).
   • Structure the project in a clear, maintainable folder hierarchy (e.g., separating business logic, UI widgets, services).
   • Recommended to use a state management solution such as Provider, Riverpod, Bloc, or Cubit.

2. Authentication (Firebase Auth)
   • Implement user registration and login (with email/password).
   • Handle reset password or basic error messages (e.g., invalid credentials, user already exists).
   • Upon successful login, display a user-specific dashboard or product list.

3. Data Storage (Firestore)
   • Create a Firestore collection (e.g., products) that stores basic info (e.g., name, price, image URL).
   • On the mobile app, fetch and display these products.

4. Stripe Payment Flow
   • Use Stripe in test mode with sample cards.
   • Build a checkout or purchase screen where users can select items and proceed to payment.
   • On successful payment, persist an order record to Firestore (e.g., user ID, timestamp, item IDs, total amount).
   • Handle payment failure gracefully (display error messages, revert any partial states as needed).

5. UI & UX
   • Provide a functional UI with a clear navigation flow (e.g., using Navigator, named routes, or a suitable routing library).
   • Indicate loading states (e.g., show a spinner during network calls).
   • Show error messages for invalid inputs, payment failures, or network issues.

6. Documentation
   • Include a README with setup instructions (e.g., how to configure Firebase, Stripe keys, environment variables).
   • Briefly explain key architecture or design decisions (e.g., chosen state management pattern, folder structure).# firebase_flutter
