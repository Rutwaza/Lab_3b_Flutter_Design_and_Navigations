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

## Screenshots (Replace With Yours)
Place screenshots in `documentation/screenshots/` and update file names if needed.

Home Screen  
`documentation/screenshots/home.png`

Detail Screen  
`documentation/screenshots/detail.png`

Booking Screen  
`documentation/screenshots/booking.png`

Confirmation Dialog  
`documentation/screenshots/confirmation.png`

## Layout Choices (Summary)
- A soft neutral background and a deep teal accent color unify all screens.
- The Home Screen uses a layered card grid with image overlays and a gradient banner to add depth.
- The Detail Screen emphasizes the hero image and quick info chips for rapid scanning.
- The Booking Screen uses clean card sections and form-style fields for clarity.
- Consistent spacing and rounded corners create a cohesive travel brand aesthetic.

## Widgets Used (18+)
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

## Navigation Flow
Home → Detail → Booking → Back

Diagram placeholder:  
`documentation/diagrams/navigation-flow.png`

## Notes
- All data is hard-coded in Dart files as required.
- Navigation uses `Navigator.push` and `Navigator.pop` with data passed to details and booking screens.
