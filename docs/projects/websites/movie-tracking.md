---
hide:
  - revision_date
  - revision_history
---

# 🎬 Movie Tracking Platform

* **Type**: Full Stack Web Application
* **Status**: Finished
* **Year**: 2025
* **Repository**: [View Source Code on GitHub](https://github.com/KostasNikolaou23/Website-Project)

---

## 📖 Project Overview

This project is a comprehensive platform for tracking movies and TV series consumption. It allows users to curate personal watchlists, rate content, and receive data-driven recommendations.

Beyond standard tracking, the application implements **gamification mechanics** (badges, leaderboards) to drive user engagement and features a customizable UI with Dark/Light mode support.

*Developed as a Capstone University Assignment.*

---

## 👥 Engineering Team & Roles

* **[Konstantinos Nikolaou](https://www.linkedin.com/in/konstantinos-nikolaou-975aa62b0/)**: Frontend Development & UI/UX
* **Antonios Vatousis**: Backend Engineering & Database Architecture

---

## 🛠️ Tech Stack & Architecture

### Backend (My Focus)
* **Runtime:** Node.js & Express.js (RESTful API Architecture)
* **Security:** User Authentication & Password Hashing (CryptoJS)
* **Data Integration:** TMDB API (External data fetching & synchronization)

### Database
* **System:** MySQL / MariaDB
* **Design:** Relational Schema (Complex relationships between Users, Reviews, and Metadata)

### Frontend
* **Framework:** React.js
* **Styling:** Bootstrap
* **Analytics:** Chart.js (Visualizing user viewing habits)

---

## ✨ Key Features

### 1. Secure Authentication
Robust login and registration system using hashed passwords for data security.
![Login Page Screenshot](movie-tracking/login.png)

### 2. Watchlist & Library Management
Users can create multiple lists (Watched, Plan to Watch) and manage their personal library with dynamic CRUD operations.

### 3. Community & Reviews
A complete rating system allowing users to write reviews and rate content, fostering a community-driven environment.
![Reviews Screenshot](movie-tracking/review.png)

### 4. Gamification & Leaderboards
To enhance engagement, the system tracks user activity and awards points/badges, displaying top users on a global leaderboard.
![Leaderboard Screenshot](movie-tracking/leaderboard.png)