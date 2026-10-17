# CampusPulse // Indian Campus Event Discovery & Student Networking

A Matrix-themed web platform for college students across India to discover campus festivals, hackathons, workshops, and connect with peers to attend events together.

---

## 📁 Project Architecture & Subfolders

The project is organized into two dedicated, decoupled services:

```
e-cell project/
├── frontend/                   # React 19 + TypeScript + Vite + Tailwind CSS
│   ├── public/                 # Static assets & matrix favicon
│   ├── src/
│   │   ├── components/         # UI components (AuthModal, EventCard, etc.)
│   │   ├── data/               # Indian universities, fest tags, mock profiles
│   │   ├── services/           # API client layer (College verify, OTP, Events)
│   │   ├── App.tsx             # Root application orchestrator
│   │   ├── index.css           # Matrix green theme variables & scanline animations
│   │   └── main.tsx            # Vite DOM entry
│   ├── index.html              # HTML shell
│   ├── package.json            # Frontend dependencies
│   ├── tailwind.config.js      # Matrix color palette configuration
│   └── vite.config.ts          # Vite configuration with /api reverse-proxy
│
├── backend/                    # Node.js + Express REST API Server
│   ├── data/
│   │   └── store.json          # Persistent JSON datastore (events, RSVPs, bookmarks)
│   ├── index.js                # Express API with college verification & OTP endpoints
│   └── package.json            # Backend dependencies (express, cors)
│
├── start-dev.bat               # 1-Click launcher for Windows (starts both backend & frontend)
├── package.json                # Root package manager script runner
└── README.md                   # Complete documentation
```

---

## ⚡ Quick Start Instructions

### Prerequisites
- Node.js (version 18 or newer)
- npm

---

### Option 1: 1-Click Launch (Windows)
Double-click `start-dev.bat` located in the root directory. It will open two separate terminal windows for the Backend and Frontend.

---

### Option 2: Run via Terminal

#### 1. Start the Backend Server (Port 3001)
```bash
cd backend
npm install
npm run dev
```
*Express server will start on http://localhost:3001*

#### 2. Start the Frontend Application (Port 5173)
In a new terminal window:
```bash
cd frontend
npm install
npm run dev
```
*Vite dev server will start on http://localhost:5173*

Open your browser to: **http://localhost:5173**

---

## 🛡️ Authentication & Verification Features

1. **Free-Text College Search & Internet Verification**:
   - Students can type any college or institute name freely.
   - The backend checks global and Indian education registries (Hipolabs Higher Education API + Wikipedia API) in real time.
   - Shows live verified badge and matching institution suggestions.

2. **Strict University Email ID Filter**:
   - Rejects personal email domains (`@gmail.com`, `@yahoo.com`, `@outlook.com`, `@hotmail.com`, etc.).
   - Displays exact prompt error: **`plz use official university email id`**.

3. **6-Digit OTP Security Protocol**:
   - Generates and dispatches a 6-digit OTP code to the student's official university inbox.
   - Includes developer testing auto-fill preview for easy demonstration.
   - Restricts progression to Step 2 until the OTP is successfully validated.

---

## 🎨 Theme & Design
- **Theme**: Matrix Cyberpunk Green (`#00ff41`)
- **Typography**: JetBrains Mono / Space Grotesk / Monospace
- **Visuals**: Scanline overlay effects, glowing HUD borders, live active node counters.
