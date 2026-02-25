# Lab 3b: Flutter Design and Navigations

Hard-coded multi-screen Travel App UI built with Flutter. The focus is advanced layout composition, reusable widgets, and navigation between screens.

## Project Structure
- `lib/data/travel_data.dart`: Hard-coded destinations and categories
- `lib/models/destination.dart`: Destination model
- `lib/screens/home_screen.dart`: Home screen dashboard
- `lib/screens/detail_screen.dart`: Detail screen
- `lib/screens/booking_screen.dart`: Booking screen
- `lib/widgets/`: Reusable UI components
- `assets/images/`: Image assets (hard-coded)

## How To Run
1. `flutter pub get`
2. `flutter run`

## Screenshots 

Home Screen  
`documentation/screenshots/home.png`

Detail Screen  
`documentation/screenshots/details.png`

Booking Screen  
`documentation/screenshots/booking.png`

Confirmation Dialog  
`documentation/screenshots/confirmation.png`

## Widgets Used
- `MaterialApp`
- `Scaffold`
- `AppBar`
- `SingleChildScrollView`
- `GridView.builder`
- `ListView.separated`
- `Stack`
- `Positioned`
- `Container`
- `Row`
- `Column`
- `Text`
- `Image.asset`
- `Card` (via `Container` + `BoxShadow`)
- `ClipRRect`
- `TextField`
- `ElevatedButton`
- `IconButton`
- `AlertDialog`
- `Spacer`
- `CircleAvatar`
- `Divider`

## Notes
- All data is hard-coded in Dart files as required.
- Navigation uses `Navigator.push` and `Navigator.pop` with data passed to details and booking screens.
