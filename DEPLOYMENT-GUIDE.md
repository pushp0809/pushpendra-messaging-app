# Pushpendra Kumar Tiwari - Deployment Guide

## 🚀 Production Deployment Instructions

Your **Pushpendra Kumar Tiwari** messaging application is now ready for deployment!

### ⚠️ Important Notes

- **Vercel Limitation**: Cannot host the full app due to WebRTC/Socket.io requirements
- **Solution**: Hybrid deployment (Frontend → Vercel, Backend → Railway)
- **Database**: MongoDB Atlas (cloud database required)

---

## 📋 Pre-Deployment Checklist

### 1. Setup MongoDB Atlas
1. Create account at https://www.mongodb.com/atlas
2. Create free cluster
3. Create database user with username/password
4. Whitelist IP addresses (0.0.0.0/0 for global access)
5. Copy connection string

### 2. Install Deployment Tools
```bash
npm install -g @railway/cli
npm install -g vercel
```

---

## 🛠️ Deployment Steps

### Phase 1: Deploy Backend to Railway

1. **Navigate to backend directory**:
   ```bash
   cd backend
   ```

2. **Login and create Railway project**:
   ```bash
   railway login
   railway new
   railway add
   ```

3. **Set Environment Variables** in Railway dashboard:
   ```
   MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/pushpendra-kumar-tiwari
   MONGO_SRV=true
   MONGO_USERNAME=your-username
   MONGO_PASSWORD=your-password
   AUTH_SECRET=your-jwt-secret-key
   PORT=4000
   ROOT_USER_EMAIL=admin@example.com
   ROOT_USER_PASSWORD=SecurePassword123!
   ```

4. **Deploy**:
   ```bash
   railway up
   ```

5. **Get Railway URL** (e.g., `https://your-app.railway.app`)

### Phase 2: Deploy Frontend to Vercel

1. **Navigate to frontend directory**:
   ```bash
   cd frontend
   ```

2. **Build the frontend**:
   ```bash
   npm run build
   ```

3. **Deploy to Vercel**:
   ```bash
   vercel login
   vercel --prod
   ```

4. **Set Environment Variables** in Vercel dashboard:
   ```
   VITE_SITE_TITLE=Pushpendra Kumar Tiwari
   VITE_SITE_BRAND=Pushpendra Kumar Tiwari
   VITE_BACKEND_URL=https://your-railway-app.railway.app
   VITE_THEME_COLOR=#0047AB
   ```

---

## ✅ Post-Deployment

### 1. Test Functionality
- ✅ User registration/login
- ✅ Real-time messaging
- ✅ Video/audio calls
- ✅ File uploads
- ✅ Group creation

### 2. Custom Domain (Optional)
- **Vercel**: Add custom domain in dashboard
- **Railway**: Add custom domain in project settings

### 3. SSL/HTTPS
- Automatically provided by both platforms

---

## 🔧 Configuration Files Created

- ✅ `frontend/vercel.json` - Vercel deployment config
- ✅ `frontend/.env.production` - Frontend environment variables
- ✅ `backend/railway.json` - Railway deployment config
- ✅ `backend/.env.production` - Backend environment variables
- ✅ `backend/Procfile` - Process configuration
- ✅ `deploy.bat` - Automated deployment script

---

## 🆘 Troubleshooting

### Common Issues:
1. **Build Errors**: Run `npm install --legacy-peer-deps` in both directories
2. **Database Connection**: Verify MongoDB Atlas credentials
3. **CORS Errors**: Add Vercel domain to backend CORS settings
4. **WebRTC Issues**: Ensure Railway has proper port configuration

### Support:
- Railway docs: https://docs.railway.app
- Vercel docs: https://vercel.com/docs
- MongoDB Atlas: https://docs.atlas.mongodb.com

---

## 📊 Expected Costs

- **MongoDB Atlas**: Free tier (500MB storage)
- **Railway**: Free tier (500 hours/month)
- **Vercel**: Free tier (unlimited static sites)

**Total Monthly Cost**: $0 (using free tiers)

---

**Your app will be accessible at**: `https://your-vercel-app.vercel.app`