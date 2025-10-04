# Pushpendra Kumar Tiwari - Real-time Messaging App

A modern real-time messaging and video conferencing application built with React, Node.js, Socket.io, and WebRTC.

## 🌟 Features

- **Real-time Messaging**: Instant chat with Socket.io
- **Video/Audio Calls**: WebRTC-powered conferencing with Mediasoup
- **File Sharing**: Upload and share files seamlessly
- **User Management**: Registration, authentication, and profiles
- **Group Chats**: Create and manage group conversations
- **Modern UI**: Clean design with custom PT logo and blue theme

## 🚀 Live Demo

- **Frontend**: [Your Vercel URL]
- **Backend API**: https://pushpendra-backend-production.up.railway.app

## 🛠️ Tech Stack

### Frontend
- React 18 with Vite
- Socket.io Client
- Mediasoup Client (WebRTC)
- SASS for styling
- Redux for state management

### Backend
- Node.js with Express
- Socket.io for real-time communication
- Mediasoup for WebRTC signaling
- MongoDB/NeDB for data storage
- JWT authentication

## 🏗️ Architecture

```
Frontend (Vercel) ←→ Backend (Railway) ←→ Database (MongoDB Atlas)
```

## 📱 Admin Account

- **Email**: pushpendra@example.com
- **Password**: SecurePass123!

## 🔧 Local Development

### Prerequisites
- Node.js 16+
- MongoDB (local or Atlas)

### Backend Setup
```bash
cd backend
npm install
cp .env.example .env
# Configure your environment variables
npm start
```

### Frontend Setup
```bash
cd frontend
npm install --legacy-peer-deps
npm run dev
```

## 🌍 Deployment

### Backend (Railway)
- Deployed at: https://pushpendra-backend-production.up.railway.app
- Environment variables configured
- MongoDB Atlas connected

### Frontend (Vercel)
- Built with Vite
- Environment variables for backend connection
- Automatic deployments from GitHub

## 📄 License

This project is based on Clover messaging app with custom branding and modifications.

## 👨‍💻 Developer

**Pushpendra Kumar Tiwari**
- Custom branding and theme implementation
- Deployment configuration and optimization
