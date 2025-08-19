# ✈️ Ticket Booking App (Flutter)

A **Flutter UI design** for a Ticket Booking application.  
This project focuses on creating a **beautiful, responsive UI** for flight and hotel booking, without any backend integration.  

---

## 📸 App UI Preview

<p align="center">
  <img src="lib/assets/appUi/1.png" alt="UI Screen 1" width="200"/>
  <img src="lib/assets/appUi/2.png" alt="UI Screen 2" width="200"/>
  <img src="lib/assets/appUi/3.png" alt="UI Screen 3" width="200"/>
</p>

<p align="center">
  <img src="lib/assets/appUi/4.png" alt="UI Screen 4" width="200"/>
  <img src="lib/assets/appUi/5.png" alt="UI Screen 5" width="200"/>
  <img src="lib/assets/appUi/6.png" alt="UI Screen 6" width="200"/>
</p>

<p align="center">
  <img src="lib/assets/appUi/7.png" alt="UI Screen 7" width="200"/>
</p>

---

## 🚀 Features
- 🏠 **Home View** – Browse upcoming flights, hotel details, and ticket information  
- ✈️ **Flights Section** – Display available flight options  
- 🏨 **Hotels Section** – View hotel details and booking information  
- 🎟️ **Tickets Section** – Check ticket details and status  
- ⚡ **State Management with GetX** – Simple and efficient reactive state management  

---

## 🛠️ Built With
- [Flutter](https://flutter.dev/) – UI toolkit for building cross-platform apps  
- [GetX](https://pub.dev/packages/get) – State management, dependency injection  

---

## 📂 Project Structure

lib/
├── assets/
│ ├── appUi/ # UI screenshots (for README showcase)
│ ├── images/ # Images used inside the app
│ └── screenshots/ # Extra screenshots
│
├── controller/ # GetX controllers
│ ├── bottom_nav_bar_controller.dart
│ └── expanded_text_controller.dart
│
├── res/
│ ├── media/ # Media-related resources
│ ├── reusable_widget # Common reusable widgets
│ ├── styles/ # Styles and themes
│ ├── utils/ # Utility classes/functions
│ └── widget/ # Custom widgets
│
├── views/ # App UI Screens
│ ├── home/
│ ├── hotels/
│ ├── profile/
│ ├── searchscreen/
│ └── tickets/
│
├── main.dart # Entry point of the app