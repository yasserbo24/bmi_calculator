# 🩺 BMI Calculator - Flutter

A clean and scalable **BMI Calculator** built with **Flutter**. This project was designed not only to calculate the Body Mass Index (BMI), but also to strengthen my understanding of **Flutter fundamentals**, **software architecture**, and **clean code principles**.

---

## 📸 Screenshots

| Home Screen | Result Screen |
|------------|---------------|
| *(Add Screenshot)* | *(Add Screenshot)* |

---

# ✨ Features

- 📏 Calculate BMI using height and weight.
- 👤 Select gender.
- 🎂 Adjust age.
- ⚖️ Increase or decrease weight.
- 📐 Adjust height using a slider.
- 📊 Display BMI value.
- 💬 Display BMI category (Underweight, Normal, Overweight, Obese...).
- 🎨 Clean and modern UI.
- 📱 Responsive layout.

---

# 🛠️ Built With

- 💙 Flutter
- 🎯 Dart
- 🎨 Material Design

---

# 📚 What I Learned

This project helped me improve much more than my Flutter syntax.

## 🧩 Flutter Widgets

- Scaffold
- AppBar
- Column
- Row
- Expanded
- Container
- Padding
- SizedBox
- Slider
- Switch
- ElevatedButton
- Text
- SafeArea
- BoxDecoration
- BorderRadius

---

## 🏗️ UI Design

- Designing responsive layouts.
- Splitting the UI into reusable widgets.
- Building clean and readable interfaces.
- Understanding widget hierarchy.
- Managing spacing correctly.

---

## 🧠 State Management

Although this project doesn't use Riverpod yet, it helped me understand:

- StatefulWidget
- setState()
- UI rebuilding
- Managing application state

---

## 🧮 Business Logic Separation

One of the biggest lessons from this project was separating business logic from the UI.

Instead of calculating the BMI inside the screen, I created a dedicated service:

```text
Home Screen
      │
      ▼
BmiCalculator
      │
      ▼
Result Screen
```

This makes the project easier to maintain and extend.

---

# 🚀 Navigation

Learned how to:

- Navigate between screens.
- Pass data using constructors.
- Receive data inside another screen.
- Display dynamic information.

---

# 💡 Programming Concepts

During this project I practiced:

- Constructors
- Classes
- Objects
- Methods
- Encapsulation
- Data passing
- Variables
- Final variables
- Clean naming conventions

---

# 🧹 Clean Code

Throughout this project I focused on:

- Meaningful variable names
- Reusable widgets
- Removing duplicated code
- Separating responsibilities
- Readable code structure

---

# 🧠 Biggest Lesson

This project completely changed the way I approach software development.

Instead of asking:

> "How do I make this work?"

I started asking:

- Who should own this logic?
- Should this code belong to the UI?
- Can this widget be reused?
- Is there a cleaner architecture?
- What data should actually be passed to the next screen?

I started thinking more like a **Software Engineer** instead of simply writing Flutter code.

---

# 🤖 AI Usage

I challenged myself to write **100% of the project code myself**.

I used AI only as:

- 📖 A mentor
- 💡 A code reviewer
- 🧠 A software engineering coach

No AI-generated code was copied into the project.

---

# 📈 Future Improvements

This project was intentionally designed to be scalable.

Upcoming features include:

- 💾 Save BMI history.
- 📋 History screen.
- 🗑️ Delete saved records.
- ✏️ Edit saved records.
- 🌙 Dark Mode.
- 📊 BMI chart.
- 🎨 Improved animations.
- 📱 Better responsiveness.
- 🧩 Riverpod state management.
- 💽 Local database (SQLite/Isar).

---

# 📂 Project Structure

```
lib/
│
├── Screens/
│   ├── home_page.dart
│   └── result_screen.dart
│
├── Services/
│   └── bmi_calculator.dart
│
├── Widgets/
│   └── info_card.dart
│
└── main.dart
```

---

# 🎯 Project Goal

The goal of this project wasn't simply building a BMI calculator.

It was learning how to:

- Think before coding.
- Build maintainable Flutter applications.
- Separate UI from Business Logic.
- Improve software architecture skills.
- Write cleaner and more professional code.

---

# 📬 Connect With Me

💼 LinkedIn: *(Add your LinkedIn URL)*

🐙 GitHub: *(Add your GitHub URL)*

---

⭐ If you like this project, consider giving it a **Star** on GitHub! documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
