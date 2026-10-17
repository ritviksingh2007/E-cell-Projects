@echo off
title CampusPulse Launcher
echo ========================================================
echo   CAMPUSPULSE // STARTING SERVICES (MATRIX GREEN)
echo ========================================================

echo Starting Backend Server on port 3001...
start "CampusPulse Backend (Port 3001)" cmd /k "cd backend && npm install && npm run dev"

timeout /t 2 /nobreak > nul

echo Starting Frontend Dev Server on port 5173...
start "CampusPulse Frontend (Port 5173)" cmd /k "cd frontend && npm install && npm run dev"

echo.
echo ========================================================
echo Both services are booting!
echo App URL: http://localhost:5173
echo API URL: http://localhost:3001
echo ========================================================
pause
