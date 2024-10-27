Mindfulness and Stress Reduction App
This Flutter application aims to support users in reducing stress and enhancing mindfulness through various features like guided meditation, breathing exercises, daily affirmations, and progress tracking.

Key Features
The app offers several helpful features, including:

-> An onboarding process that introduces users to the app’s functionality.
-> User authentication using Firebase, allowing users to register and log in.
-> Guided meditation sessions that promote relaxation and focus.
-> Breathing exercises designed to calm the mind and alleviate stress.
-> Daily affirmations for positivity and improved mental outlook.
-> Progress tracking for maintaining mindfulness goals and monitoring streaks.
-> Notification reminders that keep users consistent in their practice by setting daily notifications.
-> Getting Started
->Prerequisites
To use the app, make sure Flutter is installed and set up correctly. Additionally, a Firebase project should be created with Authentication and Cloud Firestore enabled.

Installation Steps
Clone the repository: Download the code by running the following command:

bash:
Copy code
git clone https://github.com/yourusername/mind_stress_app.git
cd mind_stress_app
Install dependencies: Use flutter pub get to install the required packages.

Firebase setup: Download google-services.json for Android and GoogleService-Info.plist for iOS from Firebase and place them in the android/app and ios/Runner directories, respectively.

Run the app: Launch the app on an emulator or connected device with:

bash:
Copy code
flutter run
Project Structure Overview
The project is organized into key files and folders for easy navigation:

> main.dart: Manages Firebase initialization, sets notification permissions, and configures app routes.
> Screens:
>> home_screen.dart: Displays the main dashboard with features like meditation and progress tracking.
>> login_screen.dart: Manages user sign-in and registration.
>> onboarding_screen.dart: Provides an introductory guide to the app’s features.
>> auth_wrapper.dart: Directs users to the login or home screen based on their authentication status.
> Services:
>> notification_service.dart: Manages notifications, including daily reminder scheduling.
>> progress_service.dart: Handles progress tracking data in Firestore.
>> Additional Screens and Their Functions
>> Home Screen: Main interface displaying options for meditation, breathing, affirmations, progress tracking, and reminders.
>> Meditation Screen: Lists mindfulness exercises with brief descriptions.
>> Breathing Screen: Offers breathing techniques for relaxation.
>> Affirmations Screen: Displays daily affirmations for positivity.
>> Progress Screen: Shows session counts and streaks, allowing users to monitor their progress.
> Code Highlights
> Background Messaging
> Firebase Cloud Messaging is used to handle background messages, initializing Firebase upon receiving notifications.

> Notification Scheduling
Notifications are scheduled to remind users daily at a specific time (e.g., 10:00 AM) to engage in mindfulness activities.

> Authentication Wrapper
An authentication wrapper ensures that only authenticated users access the main features, while unauthenticated users are redirected to the login screen.

> Dependencies
This app utilizes several dependencies, including:

> firebase_core: for Firebase integration
> firebase_auth: for authentication
> cloud_firestore: for Firestore database operations
> firebase_messaging: for notifications
> flutter_local_notifications: for scheduling and displaying notifications
> provider: for state management
>Contribution
To contribute to this project, please fork the repository, make your changes in a new branch, and submit a pull request.

